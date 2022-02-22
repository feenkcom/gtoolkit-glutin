Class {
	#name : #GlutinWorkerThreadEventFetcher,
	#superclass : #GlutinEventFetcher,
	#instVars : [
		'currentSession',
		'mainThreadEventLoop',
		'semaphore',
		'semaphoreIndex'
	],
	#category : #'Glutin-GTookitVM-Event fetcher'
}

{ #category : #'private - event loop' }
GlutinWorkerThreadEventFetcher >> basicPharoEventLoop [
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
GlutinWorkerThreadEventFetcher >> ensureEventLoop [
	"I make sure that Glutin events loop (external) is valid"

	(currentSession == Smalltalk session
		and: [ mainThreadEventLoop notNil
			and: [ mainThreadEventLoop isNull not ] ])
		ifTrue: [ ^ self ].

	currentSession := Smalltalk session.
	semaphore := Semaphore new.
	semaphoreIndex := Smalltalk registerExternalObject: semaphore.
	mainThreadEventLoop := GlutinMainThreadEventLoop withSemaphore: semaphoreIndex
]

{ #category : #accessing }
GlutinWorkerThreadEventFetcher >> eventLoop [
	<return: #GlutinEventLoop>

	self ensureEventLoop.
	^ mainThreadEventLoop
]

{ #category : #'private - event loop' }
GlutinWorkerThreadEventFetcher >> fetchEvents [
	[ mainThreadEventLoop
		poll: [ :aGlutinEvent |
			NonInteractiveTranscript stdout
				nextPutAll: aGlutinEvent event_type printString;
				cr.
			self processGlutinEvent: aGlutinEvent ] ]
		whileTrue
]

{ #category : #lifecycle }
GlutinWorkerThreadEventFetcher >> fetcherProcessPriority [
	^ Processor lowIOPriority
]

{ #category : #'system startup' }
GlutinWorkerThreadEventFetcher >> shutDown: isQuitting [
	fetcherProcess ifNotNil: #terminate.
	fetcherProcess := nil.
]

{ #category : #'system startup' }
GlutinWorkerThreadEventFetcher >> startUp: isInANewSession [
	
	Smalltalk vm isRunningInWorkerThread
		ifTrue: [ self installEventFetcher ]
]

{ #category : #'private - event loop' }
GlutinWorkerThreadEventFetcher >> waitForEvents [
	semaphore wait
]
