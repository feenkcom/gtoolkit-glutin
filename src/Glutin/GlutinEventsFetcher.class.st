Class {
	#name : #GlutinEventsFetcher,
	#superclass : #Object,
	#instVars : [
		'eventHandlers',
		'fetcherProcess',
		'currentSession',
		'eventsLoop',
		'idleSemaphore',
		'idleProcess',
		'idleProcessBlock',
		'shutdownSemaphore',
		'wantsToShutdown',
		'isInCallback'
	],
	#classInstVars : [
		'default'
	],
	#category : #'Glutin-Event fetcher'
}

{ #category : #accessing }
GlutinEventsFetcher class >> default [
	^ default ifNil: [ default := self new ]
]

{ #category : #accessing }
GlutinEventsFetcher class >> install [
	SessionManager default registerUserClassNamed: self name.
	self default installEventLoop
]

{ #category : #accessing }
GlutinEventsFetcher class >> shutDown: isQuitting [
	self default shutDown: isQuitting
]

{ #category : #accessing }
GlutinEventsFetcher class >> startUp: isInANewSession [
	self default startUp: isInANewSession
]

{ #category : #'api - event handlers' }
GlutinEventsFetcher >> addEventHandler: anEventHandler [
	(eventHandlers includes: anEventHandler)
		ifTrue: [ ^ self ].
	eventHandlers add: anEventHandler
]

{ #category : #'private - event loop' }
GlutinEventsFetcher >> basicPharoEventLoop [
	"Fetch pending raw events from the OS.
	 This method is run at the user interrupt priority."
	| idlePriority userInterruptPriority lowIOPriority prioritySempahore |

	"I make sure that Glutin events loop (external) is valid"
	self ensureEventLoop.

	[ GlutinWindowsRegistry default hasWindows ]
		whileFalse: [ 50 milliSeconds wait ].

	[ wantsToShutdown ]
		whileTrue: [ 50 milliSeconds wait ].

	idleSemaphore := Semaphore new.
	idleProcessBlock := [ idleSemaphore signal ].
	idlePriority := Processor lowestPriority + 1.
	prioritySempahore := Semaphore new.
	userInterruptPriority := Processor userInterruptPriority.
	lowIOPriority := Processor lowIOPriority.

	isInCallback := true.
	
	[
		eventsLoop run: [ :aGlutinEvent |
			| aControlFlow  |

			Processor activeProcess priority: userInterruptPriority.
			"Force the process to adopt its new lower priority.
			The #yield primitive won't do this for us"
			[prioritySempahore signal] fork.
			prioritySempahore wait.

			aControlFlow := GlutinControlFlow poll.

			self processGlutinEvent: aGlutinEvent.

			aGlutinEvent event_type = GlutinEventType RedrawEventsCleared
				ifTrue: [
					Processor nextReadyProcess priority > idlePriority ifTrue: [
							"There's a process with priority between: 12 and: 50 wanting to run"
							idleProcess ifNotNil: #terminate.
							idleSemaphore consumeAllSignals.
							idleProcess := idleProcessBlock forkAt: idlePriority.
							idleSemaphore waitTimeoutMSecs: 50.
						] ifFalse: [ 
							"Only the idleProcess wants the CPU, wait"
							aControlFlow := GlutinControlFlow wait ] ].

			wantsToShutdown
				ifTrue: [ aControlFlow := GlutinControlFlow exit ].
			"Ensure that the current callback process terminates before the next one runs"
			Processor activeProcess priority: lowIOPriority.
			aControlFlow ].
		] ensure: [
			isInCallback := false.
			shutdownSemaphore signal ]
]

{ #category : #'private - event loop' }
GlutinEventsFetcher >> ensureEventLoop [
	"I make sure that Glutin events loop (external) is valid"

	(currentSession == Smalltalk session
		and: [ eventsLoop isNotNil
			and: [ eventsLoop isNull not ] ])
		ifTrue: [ ^ self ].

	currentSession := Smalltalk session.
	eventsLoop := GlutinEventLoop new
]

{ #category : #accessing }
GlutinEventsFetcher >> eventHandlers [
	^ eventHandlers
]

{ #category : #accessing }
GlutinEventsFetcher >> eventLoop [
	<return: #GlutinEventLoop>

	self ensureEventLoop.
	^ eventsLoop
]

{ #category : #initialization }
GlutinEventsFetcher >> initialize [
	super initialize.
	
	eventHandlers := OrderedCollection new.
	idleSemaphore := nil.
	idleProcess := nil.
	
	isInCallback := false.
	shutdownSemaphore := Semaphore new.
	wantsToShutdown := false
]

{ #category : #lifecycle }
GlutinEventsFetcher >> installEventLoop [
	"Initialize the event loop process"

	self isRunning
		ifTrue: [ ^ self ].

	self reinstallEventLoop
]

{ #category : #testing }
GlutinEventsFetcher >> isRunning [
	^ fetcherProcess isNotNil and: [ fetcherProcess isTerminated not ]
]

{ #category : #accessing }
GlutinEventsFetcher >> process [
	^ fetcherProcess
]

{ #category : #'event - handling' }
GlutinEventsFetcher >> processGlutinEvent: aGlutinEvent [
	"Send the event to all registered event handlers"
	| mappedEvent |

	mappedEvent := aGlutinEvent mapped.
	(GlutinEventSignal event: mappedEvent) emit.
	self eventHandlers do: [ :eachHandler | eachHandler processGlutinEvent: mappedEvent ]
]

{ #category : #lifecycle }
GlutinEventsFetcher >> reinstallEventLoop [
	"Force initialize a new event fetcher process. It is not possible to do this if Glutin event loop is not nil"
	
	self
		assert: [ fetcherProcess isNil ]
		description: [ 'Fetcher process must not exist' ].

	fetcherProcess := [ self basicPharoEventLoop ] forkAt: Processor userInterruptPriority.
	fetcherProcess name: 'Glutin Event Fetcher Process'
]

{ #category : #'api - event handlers' }
GlutinEventsFetcher >> removeEventHandler: anEventHandler [
	(eventHandlers includes: anEventHandler)
		ifFalse: [ ^ self ].
	eventHandlers remove: anEventHandler
]

{ #category : #'system startup' }
GlutinEventsFetcher >> shutDown: isQuitting [

	wantsToShutdown := true.
	[ isInCallback ifTrue: [ shutdownSemaphore wait ] ]
		ensure: [ wantsToShutdown := false ].

	fetcherProcess ifNotNil: #terminate.
	fetcherProcess := nil.
	idleProcess ifNotNil: #terminate.
	idleProcess := nil.

	self
		assert: [ isInCallback not ]
		description: [ 'I must not be in a callback' ]
]

{ #category : #'system startup' }
GlutinEventsFetcher >> startUp: isInANewSession [
	"Here we re-enable the callback"

	self
		assert: [ isInCallback not ]
		description: [ 'I must not be in a callback' ].
		
	self
		assert: [ wantsToShutdown not ]
		description: [ 'I must not be in the middle of the shutdown' ].

	(Smalltalk os windowSystemName isNil or: [ Smalltalk os windowSystemName = 'null' ])
		ifTrue: [ self reinstallEventLoop ]
]
