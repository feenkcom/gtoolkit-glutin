Class {
	#name : #WinitEventDrivenEventFetcher,
	#superclass : #WinitEventFetcher,
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
		'WinitEventClass'
	],
	#category : #'Winit-Event Loop'
}

{ #category : #accessing }
WinitEventDrivenEventFetcher class >> eventClass [
	^ WinitEventClass
]

{ #category : #'private - event loop' }
WinitEventDrivenEventFetcher >> basicPharoEventLoop [
	"Fetch pending raw events from the OS.
	 This method is run at the user interrupt priority."
	| idlePriority userInterruptPriority lowIOPriority prioritySempahore |

	"I make sure that Winit events loop (external) is valid"
	self ensureEventLoop.

	[ WinitWindowsRegistry default hasWindows ]
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
		eventsLoop run: [ :aWinitEvent |
			| aControlFlow  |

			WinitEventClass := aWinitEvent event_type.

			aControlFlow := WinitControlFlow wait.

			self processWinitEvent: aWinitEvent.

			aWinitEvent event_type = WinitEventType RedrawEventsCleared
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
							(idleSemaphore waitTimeoutMSecs: 50)
								"deadline expired, let's fetch the next one *now*"
								ifTrue: [ aControlFlow := WinitControlFlow poll ].
						] ifFalse: [ 
							"Only the idleProcess wants the CPU, wait"
							aControlFlow := WinitControlFlow wait ] ].
			wantsToShutdown 
				ifTrue: [ aControlFlow := WinitControlFlow exit ].
			
			"This callback is about to terminate. The interrupt handler should ignore 
			this process if it is not finished when the interrupt is run."
			WinitIgnoreDuringInterruptStatus value: true.
			
			"Ensure that the current callback process terminates before the next one runs"
			Processor activeProcess priority: lowIOPriority.
			
			aControlFlow ].
		] ensure: [
			isInCallback := false.
			shutdownSemaphore signal ]
]

{ #category : #'private - event loop' }
WinitEventDrivenEventFetcher >> ensureEventLoop [
	"I make sure that Winit events loop (external) is valid"

	(currentSession == Smalltalk session
		and: [ eventsLoop isNotNil
			and: [ eventsLoop isNull not ] ])
		ifTrue: [ ^ self ].

	currentSession := Smalltalk session.
	eventsLoop := WinitEventLoop new
]

{ #category : #accessing }
WinitEventDrivenEventFetcher >> eventLoop [
	<return: #WinitEventLoop>

	self ensureEventLoop.
	^ eventsLoop
]

{ #category : #lifecycle }
WinitEventDrivenEventFetcher >> fetcherProcessPriority [
	^ Processor userInterruptPriority
]

{ #category : #initialization }
WinitEventDrivenEventFetcher >> initialize [
	super initialize.

	idleSemaphore := nil.
	idleProcess := nil.
	
	isInCallback := false.
	shutdownSemaphore := Semaphore new.
	wantsToShutdown := false
]

{ #category : #'system startup' }
WinitEventDrivenEventFetcher >> shutDown: isQuitting [

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
WinitEventDrivenEventFetcher >> startUp: isInANewSession [
	"Here we re-enable the callback"

	self
		assert: [ isInCallback not ]
		description: [ 'I must not be in a callback' ].

	self
		assert: [ wantsToShutdown not ]
		description: [ 'I must not be in the middle of the shutdown' ].

	(Smalltalk os windowSystemName isNil or: [ Smalltalk os windowSystemName = 'null' ])
		ifTrue: [ self reinstallEventFetcher ]
]
