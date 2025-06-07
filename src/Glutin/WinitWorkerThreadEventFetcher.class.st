Class {
	#name : #WinitWorkerThreadEventFetcher,
	#superclass : #RustWindowingEventFetcher,
	#instVars : [
		'mutex',
		'currentSession',
		'mainThreadEventLoop',
		'semaphore',
		'semaphoreIndex'
	],
	#category : #'Glutin-Event fetcher'
}

{ #category : #accessing }
WinitWorkerThreadEventFetcher class >> isAvailable [
	^ Smalltalk vm isRunningInWorkerThread
]

{ #category : #accessing }
WinitWorkerThreadEventFetcher class >> priority [
	^ 10
]

{ #category : #'private - event loop' }
WinitWorkerThreadEventFetcher >> basicPharoEventLoop [
	"Fetch pending raw events from the OS.
	 This method is run at the user interrupt priority."

	"I make sure that Glutin events loop (external) is valid"

	self ensureEventLoop.
	
	mainThreadEventLoop run.

	[ true ] whileTrue: [
		self waitForEvents.
		self fetchEvents ]
]

{ #category : #'private - event loop' }
WinitWorkerThreadEventFetcher >> ensureEventLoop [
	"I make sure that Glutin events loop (external) is valid"
	
	mutex critical: [
		(currentSession == Smalltalk session
			and: [ mainThreadEventLoop notNil
				and: [ mainThreadEventLoop isNull not ] ])
			ifTrue: [ ^ self ].

		currentSession := Smalltalk session.
		semaphore := Semaphore new.
		semaphoreIndex := Smalltalk registerExternalObject: semaphore.
		mainThreadEventLoop := WinitMainThreadEventLoop withSemaphore: semaphoreIndex ]
]

{ #category : #accessing }
WinitWorkerThreadEventFetcher >> eventLoop [
	<return: #GlutinCallbackEventLoop>

	self ensureEventLoop.
	^ mainThreadEventLoop
]

{ #category : #'api - accessing' }
WinitWorkerThreadEventFetcher >> eventLoopType [
	^ mainThreadEventLoop
		ifNil: [ WinitEventLoopType Unknown ]
		ifNotNil: [ :anEventLoop | anEventLoop type ]
]

{ #category : #'private - event loop' }
WinitWorkerThreadEventFetcher >> fetchEvents [
	[ mainThreadEventLoop
		poll: [ :aGlutinEvent |
			self processGlutinEvent: aGlutinEvent ] ] whileTrue
]

{ #category : #lifecycle }
WinitWorkerThreadEventFetcher >> fetcherProcessPriority [
	^ Processor lowIOPriority
]

{ #category : #initialization }
WinitWorkerThreadEventFetcher >> initialize [
	super initialize.
	
	mutex := Mutex new
]

{ #category : #'as yet unclassified' }
WinitWorkerThreadEventFetcher >> newUserInterruptHandler [
	^ WinitUserInterruptHandler new
]

{ #category : #'system startup' }
WinitWorkerThreadEventFetcher >> shutDown: isQuitting [
	fetcherProcess ifNotNil: #terminate.
	fetcherProcess := nil.
]

{ #category : #'system startup' }
WinitWorkerThreadEventFetcher >> startUp: isInANewSession [
	(Winit isSupported and: [ Smalltalk vm isRunningInWorkerThread ])
		ifTrue: [ self installEventFetcher ]
]

{ #category : #'private - event loop' }
WinitWorkerThreadEventFetcher >> waitForEvents [
	semaphore wait
]
