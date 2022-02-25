Class {
	#name : #GlutinEventFetcher,
	#superclass : #Object,
	#instVars : [
		'eventHandlers',
		'fetcherProcess'
	],
	#classVars : [
		'default'
	],
	#category : #'Glutin-Event fetcher'
}

{ #category : #accessing }
GlutinEventFetcher class >> default [
	"Initialize an event fetcher if it does not exist or if it is no longer available"
	(default isNil or: [ default class isAvailable not ])
		ifTrue: [ default := self preferableEventFetcher new ].

	^ default
]

{ #category : #accessing }
GlutinEventFetcher class >> install [
	SessionManager default registerUserClassNamed: self name.
	self default installEventFetcher
]

{ #category : #accessing }
GlutinEventFetcher class >> isAvailable [
	^ self subclassResponsibility
]

{ #category : #accessing }
GlutinEventFetcher class >> preferableEventFetcher [
	^ (self subclasses sorted: [ :a :b | a priority > b priority ])
		detect: [ :each | each isAvailable ]
		ifNone: [ self error: 'Could not find a suitable event fetcher' ]
]

{ #category : #accessing }
GlutinEventFetcher class >> priority [
	^ self subclassResponsibility
]

{ #category : #accessing }
GlutinEventFetcher class >> shutDown: isQuitting [
	self default shutDown: isQuitting
]

{ #category : #accessing }
GlutinEventFetcher class >> startUp: isInANewSession [
	self default startUp: isInANewSession
]

{ #category : #'api - event handlers' }
GlutinEventFetcher >> addEventHandler: anEventHandler [
	(eventHandlers includes: anEventHandler)
		ifTrue: [ ^ self ].
	eventHandlers add: anEventHandler
]

{ #category : #'private - event loop' }
GlutinEventFetcher >> basicPharoEventLoop [
	self subclassResponsibility
]

{ #category : #accessing }
GlutinEventFetcher >> eventHandlers [
	^ eventHandlers
]

{ #category : #accessing }
GlutinEventFetcher >> eventLoop [
	"Return a Glutin event loop behind this event fetcher. A reference to the event loop
	is required to create a window"
	<return: #GlutinEventLoop>
	
	^ self subclassResponsibility
]

{ #category : #accessing }
GlutinEventFetcher >> fetcherProcess [
	^ fetcherProcess
]

{ #category : #lifecycle }
GlutinEventFetcher >> fetcherProcessPriority [
	^ self subclassResponsibility
]

{ #category : #initialization }
GlutinEventFetcher >> initialize [
	super initialize.
	
	eventHandlers := OrderedCollection new.
]

{ #category : #lifecycle }
GlutinEventFetcher >> installEventFetcher [
	"Initialize the event fetcher process"

	self isRunning
		ifTrue: [ ^ self ].

	self reinstallEventFetcher
]

{ #category : #testing }
GlutinEventFetcher >> isRunning [
	"Return true if a fetcher Pharo process is running"
	<return: #Boolean>

	^ self fetcherProcess isNotNil and: [ self fetcherProcess isTerminated not ]
]

{ #category : #'event - handling' }
GlutinEventFetcher >> processGlutinEvent: aGlutinEvent [
	"Send the event to all registered event handlers"

	| mappedEvent |

	mappedEvent := aGlutinEvent mapped.
	(GlutinEventSignal event: mappedEvent) emit.

	"rust-windowing generates synthetic key press and release events to try and work around issues with keys being pressed and held while window focus is lost, see https://github.com/rust-windowing/winit/pull/1296
	However the Ubuntu workspace keyboard shortcut is causing synthetic Pressed events, without the corresponding Release event.
	Ignore synthetic key Pressed events"
	(mappedEvent isKeyboardInputEvent  and:
		[ mappedEvent is_synthetic and:
		[ mappedEvent state = GlutinEventInputElementState Pressed ] ]) ifTrue:
				[ ^ self ].

	self eventHandlers do: [ :eachHandler | eachHandler processGlutinEvent: mappedEvent ]
]

{ #category : #lifecycle }
GlutinEventFetcher >> reinstallEventFetcher [
	"Force initialize a new event fetcher process. It is not possible to do this if Glutin event loop is not nil"
	
	self
		assert: [ fetcherProcess isNil ]
		description: [ 'Fetcher process must not exist' ].
	
	self
		assert: [ Glutin isSupported ]
		description: [ 'Glutin must be supported by the system' ].
	
	fetcherProcess := [ self basicPharoEventLoop ] forkAt: self fetcherProcessPriority.
	fetcherProcess name: 'Glutin Event Fetcher Process'
]

{ #category : #'api - event handlers' }
GlutinEventFetcher >> removeEventHandler: anEventHandler [
	(eventHandlers includes: anEventHandler)
		ifFalse: [ ^ self ].
	eventHandlers remove: anEventHandler
]

{ #category : #'system startup' }
GlutinEventFetcher >> shutDown: isQuitting [
]

{ #category : #'system startup' }
GlutinEventFetcher >> startUp: isInANewSession [
]
