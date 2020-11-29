Class {
	#name : #GlutinPollingEventFetcher,
	#superclass : #GlutinEventFetcher,
	#instVars : [
		'currentSession',
		'pollingEventLoop',
		'glutinEventLoop'
	],
	#category : #'Glutin-Event fetcher'
}

{ #category : #'private - event loop' }
GlutinPollingEventFetcher >> basicPharoEventLoop [
	"Fetch pending raw events from the OS.
	 This method is run at the user interrupt priority."

	"I make sure that Glutin events loop (external) is valid"

	self ensureEventLoop.
	[ GlutinWindowsRegistry default hasWindows ]
		whileFalse: [ 50 milliSeconds wait ].
	[ true ] whileTrue: [ self fetchEvents ]
]

{ #category : #'private - event loop' }
GlutinPollingEventFetcher >> ensureEventLoop [
	"I make sure that Glutin events loop (external) is valid"

	(currentSession == Smalltalk session
		and: [ glutinEventLoop notNil
			and: [ glutinEventLoop isNull not
				and: [ pollingEventLoop notNil
					and: [ pollingEventLoop isNull not ] ] ] ])
		ifTrue: [ ^ self ].

	currentSession := Smalltalk session.
	glutinEventLoop := GlutinEventLoop new.
	pollingEventLoop := GlutinPollingEventLoop new.
]

{ #category : #accessing }
GlutinPollingEventFetcher >> eventLoop [
	<return: #GlutinEventLoop>

	self ensureEventLoop.
	^ glutinEventLoop
]

{ #category : #'private - event loop' }
GlutinPollingEventFetcher >> fetchEvents [
	pollingEventLoop run: glutinEventLoop.

	[ pollingEventLoop
		poll: [ :aGlutinEvent | self processGlutinEvent: aGlutinEvent ] ]
		whileTrue.

	16 milliSeconds wait
]

{ #category : #lifecycle }
GlutinPollingEventFetcher >> fetcherProcessPriority [
	^ Processor lowIOPriority
]

{ #category : #'system startup' }
GlutinPollingEventFetcher >> shutDown: isQuitting [
	fetcherProcess ifNotNil: #terminate.
	fetcherProcess := nil.
]

{ #category : #'system startup' }
GlutinPollingEventFetcher >> startUp: isInANewSession [
	
	(Smalltalk os windowSystemName isNil or: [ Smalltalk os windowSystemName = 'null' ])
		ifTrue: [ self installEventFetcher ]
]
