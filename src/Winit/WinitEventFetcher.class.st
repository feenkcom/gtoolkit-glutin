Class {
	#name : #WinitEventFetcher,
	#superclass : #Object,
	#instVars : [
		'eventHandlers',
		'fetcherProcess'
	],
	#classVars : [
		'default'
	],
	#category : #'Winit-Event Loop'
}

{ #category : #accessing }
WinitEventFetcher class >> default [
	^ default ifNil: [ default := self preferableEventFetcher new ]
]

{ #category : #accessing }
WinitEventFetcher class >> install [
	SessionManager default registerUserClassNamed: self name.
	self default installEventFetcher
]

{ #category : #accessing }
WinitEventFetcher class >> preferableEventFetcher [
	^ WinitEventDrivenEventFetcher
]

{ #category : #accessing }
WinitEventFetcher class >> shutDown: isQuitting [
	self default shutDown: isQuitting
]

{ #category : #accessing }
WinitEventFetcher class >> startUp: isInANewSession [
	self default startUp: isInANewSession
]

{ #category : #'api - event handlers' }
WinitEventFetcher >> addEventHandler: anEventHandler [
	(eventHandlers includes: anEventHandler)
		ifTrue: [ ^ self ].
	eventHandlers add: anEventHandler
]

{ #category : #'private - event loop' }
WinitEventFetcher >> basicPharoEventLoop [
	self subclassResponsibility
]

{ #category : #accessing }
WinitEventFetcher >> eventHandlers [
	^ eventHandlers
]

{ #category : #accessing }
WinitEventFetcher >> eventLoop [
	"Return a Winit event loop behind this event fetcher. A reference to the event loop
	is required to create a window"
	<return: #WinitEventLoop>
	
	^ self subclassResponsibility
]

{ #category : #accessing }
WinitEventFetcher >> fetcherProcess [
	^ fetcherProcess
]

{ #category : #lifecycle }
WinitEventFetcher >> fetcherProcessPriority [
	^ self subclassResponsibility
]

{ #category : #initialization }
WinitEventFetcher >> initialize [
	super initialize.
	
	eventHandlers := OrderedCollection new.
]

{ #category : #lifecycle }
WinitEventFetcher >> installEventFetcher [
	"Initialize the event fetcher process"

	self isRunning
		ifTrue: [ ^ self ].

	self reinstallEventFetcher
]

{ #category : #testing }
WinitEventFetcher >> isRunning [
	"Return true if a fetcher Pharo process is running"
	<return: #Boolean>

	^ self fetcherProcess isNotNil and: [ self fetcherProcess isTerminated not ]
]

{ #category : #'event - handling' }
WinitEventFetcher >> processWinitEvent: aWinitEvent [
	"Send the event to all registered event handlers"

	| mappedEvent |

	mappedEvent := aWinitEvent mapped.
	(WinitEventSignal event: mappedEvent) emit.

	"rust-windowing generates synthetic key press and release events to try and work around issues with keys being pressed and held while window focus is lost, see https://github.com/rust-windowing/winit/pull/1296
	However the Ubuntu workspace keyboard shortcut is causing synthetic Pressed events, without the corresponding Release event.
	Ignore synthetic key Pressed events"
	(mappedEvent isKeyboardInputEvent  and:
		[ mappedEvent is_synthetic and:
		[ mappedEvent state = WinitEventInputElementState Pressed ] ]) ifTrue:
				[ ^ self ].

	self eventHandlers do: [ :eachHandler | eachHandler processWinitEvent: mappedEvent ]
]

{ #category : #lifecycle }
WinitEventFetcher >> reinstallEventFetcher [
	"Force initialize a new event fetcher process. It is not possible to do this if Glutin event loop is not nil"
	
	self
		assert: [ fetcherProcess isNil ]
		description: [ 'Fetcher process must not exist' ].

	fetcherProcess := [ self basicPharoEventLoop ] forkAt: self fetcherProcessPriority.
	fetcherProcess name: 'Glutin Event Fetcher Process'
]

{ #category : #'api - event handlers' }
WinitEventFetcher >> removeEventHandler: anEventHandler [
	(eventHandlers includes: anEventHandler)
		ifFalse: [ ^ self ].
	eventHandlers remove: anEventHandler
]

{ #category : #'system startup' }
WinitEventFetcher >> shutDown: isQuitting [
]

{ #category : #'system startup' }
WinitEventFetcher >> startUp: isInANewSession [
]
