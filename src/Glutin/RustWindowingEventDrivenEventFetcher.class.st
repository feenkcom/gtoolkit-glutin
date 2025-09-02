Class {
	#name : #RustWindowingEventDrivenEventFetcher,
	#superclass : #RustWindowingEventFetcher,
	#instVars : [
		'currentSession',
		'eventsLoop',
		'idleSemaphore',
		'idleProcess',
		'idleProcessBlock',
		'shutdownSemaphore',
		'wantsToShutdown',
		'isInCallback'
	],
	#classVars : [
		'GlutinEventClass'
	],
	#category : #'Glutin-Event fetcher'
}

{ #category : #accessing }
RustWindowingEventDrivenEventFetcher class >> eventClass [
	^ GlutinEventClass
]

{ #category : #testing }
RustWindowingEventDrivenEventFetcher class >> isAbstract [
	^ self == RustWindowingEventDrivenEventFetcher
]

{ #category : #'private - event loop' }
RustWindowingEventDrivenEventFetcher >> basicPharoEventLoop [
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

			GlutinEventClass := aGlutinEvent event_type.

			aControlFlow := WinitControlFlow wait.

			self processGlutinEvent: aGlutinEvent.

			aGlutinEvent event_type = WinitEventType RedrawEventsCleared
				ifTrue: [
					"We should only let other processes run within redraw events cleared"
					
					Processor activeProcess priority: userInterruptPriority.
					"Force the process to adopt its new lower priority.
					The #yield primitive won't do this for us"
					[ prioritySempahore signal ] fork.
					prioritySempahore wait.
					
					Processor nextReadyProcess priority > idlePriority ifTrue: [
							"There's a process with priority between: 12 and: 50 wanting to run"
							idleProcess ifNotNil: #terminate.
							idleSemaphore consumeAllSignals.
							idleProcess := idleProcessBlock forkAt: idlePriority.
							(idleSemaphore waitTimeoutMilliseconds: 50)
								"deadline expired, let's fetch the next one *now*"
								ifTrue: [ aControlFlow := WinitControlFlow poll ].
						] ifFalse: [ 
							"Only the idleProcess wants the CPU, wait"
							aControlFlow := WinitControlFlow wait ] ].
			wantsToShutdown 
				ifTrue: [ aControlFlow := WinitControlFlow exit ].
			
			"This callback is about to terminate. The interrupt handler should ignore 
			this process if it is not finished when the interrupt is run."
			GlutinIgnoreDuringInterruptStatus value: true.
			
			"Ensure that the current callback process terminates before the next one runs"
			Processor activeProcess priority: lowIOPriority.
			
			aControlFlow ].
		] ensure: [
			isInCallback := false.
			shutdownSemaphore signal ]
]

{ #category : #'private - event loop' }
RustWindowingEventDrivenEventFetcher >> ensureEventLoop [
	"I make sure that Glutin events loop (external) is valid"

	(currentSession == Smalltalk session
		and: [ eventsLoop isNotNil
			and: [ eventsLoop isNull not ] ])
		ifTrue: [ ^ self ].

	currentSession := Smalltalk session.
	eventsLoop := self newEventLoop
]

{ #category : #accessing }
RustWindowingEventDrivenEventFetcher >> eventLoop [
	<return: #GlutinCallbackEventLoop>

	self ensureEventLoop.
	^ eventsLoop
]

{ #category : #'api - accessing' }
RustWindowingEventDrivenEventFetcher >> eventLoopType [
	^ eventsLoop
		ifNil: [ WinitEventLoopType Unknown ]
		ifNotNil: [ :anEventLoop | anEventLoop type ]
]

{ #category : #lifecycle }
RustWindowingEventDrivenEventFetcher >> fetcherProcessPriority [
	^ Processor userInterruptPriority
]

{ #category : #initialization }
RustWindowingEventDrivenEventFetcher >> initialize [
	super initialize.

	idleSemaphore := nil.
	idleProcess := nil.
	
	isInCallback := false.
	shutdownSemaphore := Semaphore new.
	wantsToShutdown := false
]

{ #category : #'private - event loop' }
RustWindowingEventDrivenEventFetcher >> newEventLoop [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
RustWindowingEventDrivenEventFetcher >> newUserInterruptHandler [
	^ WinitUserInterruptHandler new
]

{ #category : #'system startup' }
RustWindowingEventDrivenEventFetcher >> shutDown: isQuitting [

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
RustWindowingEventDrivenEventFetcher >> startUp: isInANewSession [
	"Here we re-enable the callback"

	self
		assert: [ isInCallback not ]
		description: [ 'I must not be in a callback' ].

	self
		assert: [ wantsToShutdown not ]
		description: [ 'I must not be in the middle of the shutdown' ].

	Glutin isSupported
		ifTrue: [ self reinstallEventFetcher ]
]
