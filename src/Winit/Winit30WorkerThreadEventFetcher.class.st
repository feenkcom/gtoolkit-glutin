Class {
	#name : #Winit30WorkerThreadEventFetcher,
	#superclass : #RustWindowingEventFetcher,
	#instVars : [
		'mutex',
		'currentSession',
		'semaphore',
		'semaphoreIndex',
		'application',
		'applicationHandle'
	],
	#category : #'Winit-Event fetcher'
}

{ #category : #accessing }
Winit30WorkerThreadEventFetcher class >> isAvailable [
	^ Smalltalk vm isRunningInWorkerThread
		and: [ Winit30 isSupported
			and: [ CommandLineArguments new hasOption: 'winit30' ] ]
]

{ #category : #accessing }
Winit30WorkerThreadEventFetcher class >> priority [
	^ 11
]

{ #category : #'private - event loop' }
Winit30WorkerThreadEventFetcher >> basicPharoEventLoop [
	"Fetch pending raw events from the OS.
	 This method is run at the user interrupt priority."

	"I make sure that Glutin events loop (external) is valid"

	self ensureEventLoop.
	
	GtVirtualMachine instance
		eventLoopWaker: applicationHandle getHandle
		function: Winit30Application primGetWakerCallback.
	
	application run.
	applicationHandle beRunning.

	[ true ] whileTrue: [
		self waitForEvents.
		self fetchEvents ]
]

{ #category : #'private - event loop' }
Winit30WorkerThreadEventFetcher >> ensureEventLoop [
	"I make sure that Winit events loop (external) is valid"
	
	mutex critical: [
		(currentSession == Smalltalk session
			and: [ applicationHandle notNil
				and: [ applicationHandle isNull not ] ])
			ifTrue: [ ^ self ].

		currentSession := Smalltalk session.
		semaphore := Semaphore new.
		semaphoreIndex := Smalltalk registerExternalObject: semaphore.
		self initializeApplication ]
]

{ #category : #accessing }
Winit30WorkerThreadEventFetcher >> eventLoop [
	<return: #GlutinCallbackEventLoop>

	self ensureEventLoop.
	^ applicationHandle
]

{ #category : #'api - accessing' }
Winit30WorkerThreadEventFetcher >> eventLoopType [
	^ applicationHandle
		ifNil: [ WinitEventLoopType Unknown ]
		ifNotNil: [ :anEventLoop | anEventLoop type ]
]

{ #category : #'private - event loop' }
Winit30WorkerThreadEventFetcher >> fetchEvents [
	[ applicationHandle
		tryPollEvent: [ :aGlutinEvent |
			self processMappedEvent: aGlutinEvent ] ] whileTrue
]

{ #category : #lifecycle }
Winit30WorkerThreadEventFetcher >> fetcherProcessPriority [
	^ Processor lowIOPriority
]

{ #category : #initialization }
Winit30WorkerThreadEventFetcher >> initialize [
	super initialize.
	
	mutex := Monitor new
]

{ #category : #initialization }
Winit30WorkerThreadEventFetcher >> initializeApplication [
	| anApplicationBuilder |
	
	anApplicationBuilder := Winit30ApplicationBuilder new
		setSemaphoreSignaller: (Winit30SemaphoreSignaller forSemaphoreIndex: semaphoreIndex);
		addWakeupSignaller: (Winit30WakeupSignaller forVirtualMachine).

	anApplicationBuilder buildAndDo: [ :anApplication :anApplicationHandle |
		application := anApplication.
		applicationHandle := anApplicationHandle ]
]

{ #category : #'system startup' }
Winit30WorkerThreadEventFetcher >> shutDown: isQuitting [
	fetcherProcess ifNotNil: #terminate.
	fetcherProcess := nil.
]

{ #category : #'system startup' }
Winit30WorkerThreadEventFetcher >> startUp: isInANewSession [
	self installEventFetcher
]

{ #category : #'private - event loop' }
Winit30WorkerThreadEventFetcher >> waitForEvents [
	semaphore wait
]
