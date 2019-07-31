Class {
	#name : #GlutinEventsFetcher,
	#superclass : #Object,
	#instVars : [
		'eventHandlers',
		'fetcherProcess',
		'currentSession',
		'eventsLoop'
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
	eventsLoop := GlutinEventsLoop new
]

{ #category : #accessing }
GlutinEventsFetcher >> eventHandlers [
	^ eventHandlers
]

{ #category : #accessing }
GlutinEventsFetcher >> eventLoop [
	"Fetch pending raw events from the OS.
	 This method is run at high priority."

	"I make sure that Glutin events loop (external) is valid"
	self ensureEventsLoop.

	[ GlutinWindowsRegistry default hasWindows ]
		whileFalse: [ 50 milliSeconds wait ]. 

	eventsLoop run: [ :aGlutinEvent | self processGlutinEvent: aGlutinEvent ]
]

{ #category : #accessing }
GlutinEventsFetcher >> eventsLoop [
	^ eventsLoop
]

{ #category : #initialization }
GlutinEventsFetcher >> initialize [
	super initialize.
	
	eventHandlers := OrderedCollection new
]

{ #category : #accessing }
GlutinEventsFetcher >> installEventLoop [
	"Initialize the event loop process"

	fetcherProcess := [ self eventLoop ] forkAt: Processor lowestPriority + 1.
	fetcherProcess name: 'Glutin Event Fetcher Process'
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

{ #category : #'system startup' }
GlutinEventsFetcher >> shutDown: isQuitting [
	
	eventsLoop ifNotNil: [ :anEventsLoop | eventsLoop shutDown: isQuitting ]
]

{ #category : #'system startup' }
GlutinEventsFetcher >> startUp: isInANewSession [
	"Here we re-enable the callback"
	
	eventsLoop ifNotNil: [ :anEventsLoop | anEventsLoop startUp: isInANewSession ]
]

{ #category : #accessing }
GlutinEventsFetcher >> thunkp [
	eventsLoop
		ifNil: [ ^ 0 ].
		
	eventsLoop callback
		ifNil: [ ^ 0 ].
		
	^ eventsLoop callback thunk address
]
