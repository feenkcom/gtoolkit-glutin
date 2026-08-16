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
	Smalltalk vm isRunningInWorkerThread
		ifFalse: [ ^ false ].

	Winit30 isSupported
		ifFalse: [ ^ false ].

	^ true
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
	
	self
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
Winit30WorkerThreadEventFetcher >> eventLoopWaker: anExternalAddressThunk function: anExternalAddressFunction [
	"Assign an event loop waker. When virtual machine runs in the worker (non-main) thread
	it needs a way to wake up an event loop and process events or event loop callouts.
	If an event loop waker is not assigned the virtual machine has to wait for a ui event (like mouse movement)
	to start processing event loop callouts.

	The waker function must be a pointer to the external C function in the following form:
		extern ""C"" fn(waker_thunk: *const c_void, event: u32) -> bool
		
	The first argument that is passed to the waker function is a pointer to the thunk,
	which is the first argument of this method. An event is a number that may help the event loop
	to differentiate between wake up sources. The virtual machine passes `0` as an event"

	self
		assert: [ anExternalAddressThunk isExternalAddress ]
		description: [ 'A waker argument must be an external address' ].
		
	self
		assert: [ anExternalAddressFunction isExternalAddress ]
		description: [ 'A waker function must be an external address' ].
	
	self
		primitiveSetEventLoopWakerThunk: anExternalAddressThunk
		function: anExternalAddressFunction
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
	
	mutex := Mutex new
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

{ #category : #initialization }
Winit30WorkerThreadEventFetcher >> newUserInterruptHandler [
	^ Winit30UserInterruptHandler new.
]

{ #category : #'private - event loop' }
Winit30WorkerThreadEventFetcher >> primitiveSetEventLoopWakerThunk: anExternalAddressThunk function: anExternalAddressFunction [
	<primitive: 'primitiveSetEventLoopWaker' error: ec>
	
	^ false
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
