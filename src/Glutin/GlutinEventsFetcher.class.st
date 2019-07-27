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
	eventsLoop run: [ :aGlutinEvent | self processGlutinEvent: aGlutinEvent ].
	NonInteractiveTranscript stdout show: 'Exited from event loop!'; cr.
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

{ #category : #'event - handling' }
GlutinEventsFetcher >> processGlutinEvent: aGlutinEvent [
	"Send the event to all registered event handlers"

	self eventHandlers do: [ :eachHandler | eachHandler processGlutinEvent: aGlutinEvent mapped ]
]

{ #category : #'system startup' }
GlutinEventsFetcher >> shutDown: isQuitting [
	eventsLoop shutDown: isQuitting
]

{ #category : #'system startup' }
GlutinEventsFetcher >> startUp: isInANewSession [
	"Here we re-enable the callback"
	
	eventsLoop startUp: isInANewSession
]
