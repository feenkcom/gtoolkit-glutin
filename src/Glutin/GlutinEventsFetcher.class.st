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
	#category : #'Glutin-Events Fetcher'
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

{ #category : #accessing }
GlutinEventsFetcher >> ensureEventsLoop [
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
	"Fetch pending raw events from the OS.
	 This method is run at the user interrupt priority."
	| idlePriority |

	"I make sure that Glutin events loop (external) is valid"
	self ensureEventsLoop.

	[ GlutinWindowsRegistry default hasWindows ]
		whileFalse: [ 50 milliSeconds wait ].

	[ wantsToShutdown ]
		whileTrue: [ 50 milliSeconds wait ].

	idleSemaphore := Semaphore new.
	idleProcessBlock := [ idleSemaphore signal ].
	idlePriority := Processor lowestPriority + 1.

	isInCallback := true.
	
	[
		eventsLoop run: [ :aGlutinEvent |
			| aControlFlow  |

			aControlFlow := GlutinControlFlow poll.

			self processGlutinEvent: aGlutinEvent.

			aGlutinEvent event_type = GlutinEventType EventsCleared
				ifTrue: [
					Processor nextReadyProcess priority > idlePriority
						ifTrue: [
							idleProcess ifNotNil: #terminate.
							idleSemaphore consumeAllSignals.
							idleProcess := idleProcessBlock forkAt: idlePriority.
							idleSemaphore waitTimeoutMSecs: 50.
						] ifFalse: [ aControlFlow := GlutinControlFlow wait ] ].

			wantsToShutdown
				ifTrue: [ aControlFlow := GlutinControlFlow exit ].
			aControlFlow ].
		] ensure: [
			isInCallback := false.
			shutdownSemaphore signal ]
]

{ #category : #accessing }
GlutinEventsFetcher >> eventsLoop [
	<return: #GlutinEventLoop>

	self ensureEventsLoop.
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

	(fetcherProcess isNotNil and: [ fetcherProcess isTerminated not ])
		ifTrue: [ ^ self ].

	self reinstallEventLoop
]

{ #category : #printing }
GlutinEventsFetcher >> printStatus [
	| aString |
		
	aString := String streamContents: [ :aStream |
		fetcherProcess
			ifNil: [ aStream nextPutAll: 'Fetcher process is nil' ]
			ifNotNil: [ aStream nextPutAll: ('Fetcher process: "{1}"; priority: {2}; terminated: {3}; suspended: {4}; active: {5}'
				format: {
					fetcherProcess name.
					fetcherProcess priority.
					fetcherProcess isTerminated.
					fetcherProcess isSuspended.
					fetcherProcess isActiveProcess }).
					
				aStream cr.
				
				aStream nextPutAll: fetcherProcess suspendedContext asString; cr.
				aStream nextPutAll: fetcherProcess suspendingList asString.		
				
			].
			
		aStream cr.
		
		eventsLoop
			ifNil: [ aStream nextPutAll: 'Events loop is nil' ]
			ifNotNil: [ :anEventsLoop |
				aStream nextPutAll: (anEventsLoop isRunning
					ifTrue: [ 'Rust event loop is running' ]
					ifFalse: [ 'Rust event loop is NOT running' ]); cr.
				
				anEventsLoop status
					ifNil: [ aStream nextPutAll: 'Callback status is nil' ]
					ifNotNil: [ 	:aCallbackStatus |
						aCallbackStatus isNull
							ifTrue: [ aStream nextPutAll: 'Callback status is NULL' ]
							ifFalse: [ aStream nextPutAll: ('Callback status is {1}' format: {
								aCallbackStatus is_valid
									ifTrue: [ 'valid' ]
									ifFalse: [ 'invalid' ] }) ] ].
				aStream cr.
				anEventsLoop callback
					ifNil: [ aStream nextPutAll: 'Callback is nil' ]
					ifNotNil: [ 	:aCallback |
						aStream nextPutAll: ('Callback thunk: {1}; valid {2}' format: {
							aCallback thunk.
							aCallback isValid }) ].
			].
			aStream cr.
		].

	aString linesDo: [ :l | NonInteractiveTranscript stdout show: l logCr; cr ]
		
	
	"(status isNotNil and: [ status isNull not ])
		ifTrue: [ status is_valid: true ]"
]

{ #category : #accessing }
GlutinEventsFetcher >> process [
	^ fetcherProcess
]

{ #category : #'event - handling' }
GlutinEventsFetcher >> processGlutinEvent: aGlutinEvent [
	"Send the event to all registered event handlers"

	self eventHandlers do: [ :eachHandler | eachHandler processGlutinEvent: aGlutinEvent mapped ]
]

{ #category : #lifecycle }
GlutinEventsFetcher >> reinstallEventLoop [
	"Force initialize a new event fetcher process. It is not possible to do this if Glutin event loop is not nil"
	
	self
		assert: [ fetcherProcess isNil ]
		description: [ 'Fetcher process must not exist' ].

	fetcherProcess := [ self eventLoop ] forkAt: Processor userInterruptPriority.
	fetcherProcess name: 'Glutin Event Fetcher Process'
]

{ #category : #'system startup' }
GlutinEventsFetcher >> shutDown: isQuitting [

	wantsToShutdown := true.
	[ shutdownSemaphore wait ]
		ensure: [ wantsToShutdown := false ].

	idleProcess ifNotNil: #terminate.
	fetcherProcess ifNotNil: #terminate.
	fetcherProcess := nil.

	self
		assert: isInCallback not
		description: [ 'I must not be in a callback' ].

	eventsLoop ifNotNil: [ :anEventsLoop | eventsLoop shutDown: isQuitting ]
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

	eventsLoop ifNotNil: [ :anEventsLoop | anEventsLoop startUp: isInANewSession ].

	(Smalltalk os windowSystemName isNil or: [ Smalltalk os windowSystemName = 'null' ])
		ifTrue: [ self reinstallEventLoop ]
]

{ #category : #accessing }
GlutinEventsFetcher >> thunkp [
	eventsLoop
		ifNil: [ ^ 0 ].
		
	eventsLoop callback
		ifNil: [ ^ 0 ].
		
	^ eventsLoop callback thunk address
]
