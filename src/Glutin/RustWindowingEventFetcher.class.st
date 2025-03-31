Class {
	#name : #RustWindowingEventFetcher,
	#superclass : #Object,
	#instVars : [
		'eventHandlers',
		'fetcherProcess',
		'session'
	],
	#classVars : [
		'default'
	],
	#category : #'Glutin-Event fetcher'
}

{ #category : #accessing }
RustWindowingEventFetcher class >> default [
	"Initialize an event fetcher if it does not exist or if it is no longer available"
	(default isNil or: [
		default session ~~ Smalltalk session or: [
			default class isAbstract or: [
				default class isAvailable not ] ] ])
		ifTrue: [ default := self preferableEventFetcher new transferEventHandlersFrom: default ].

	^ default
]

{ #category : #initialization }
RustWindowingEventFetcher class >> initialize [
	SessionManager default registerUserClassNamed: self name
]

{ #category : #accessing }
RustWindowingEventFetcher class >> install [
	self default installEventFetcher
]

{ #category : #testing }
RustWindowingEventFetcher class >> isAbstract [
	^ self == RustWindowingEventFetcher
]

{ #category : #accessing }
RustWindowingEventFetcher class >> isAvailable [
	^ self subclassResponsibility
]

{ #category : #accessing }
RustWindowingEventFetcher class >> preferableEventFetcher [
	^ ((self allSubclasses select: [ :eachSubclass | eachSubclass isAbstract not ])
		sorted: [ :a :b | a priority > b priority ])
			detect: [ :each | each isAvailable ]
			ifNone: [ self error: 'Could not find a suitable event fetcher' ]
]

{ #category : #accessing }
RustWindowingEventFetcher class >> priority [
	"The higher the priority the higher the chance that the event fetcher will be selected"

	^ self subclassResponsibility
]

{ #category : #accessing }
RustWindowingEventFetcher class >> shutDown: isQuitting [
	self default shutDown: isQuitting
]

{ #category : #accessing }
RustWindowingEventFetcher class >> startUp: isInANewSession [
	self default startUp: isInANewSession
]

{ #category : #'api - event handlers' }
RustWindowingEventFetcher >> addEventHandler: anEventHandler [
	(eventHandlers includes: anEventHandler)
		ifTrue: [ ^ self ].
	eventHandlers add: anEventHandler
]

{ #category : #'private - event loop' }
RustWindowingEventFetcher >> basicPharoEventLoop [
	self subclassResponsibility
]

{ #category : #'api - accessing' }
RustWindowingEventFetcher >> eventHandlers [
	^ eventHandlers
]

{ #category : #'api - accessing' }
RustWindowingEventFetcher >> eventLoop [
	"Return a Glutin event loop behind this event fetcher. A reference to the event loop
	is required to create a window"
	<return: #GlutinCallbackEventLoop>
	
	^ self subclassResponsibility
]

{ #category : #'api - accessing' }
RustWindowingEventFetcher >> eventLoopType [
	^ self subclassResponsibility
]

{ #category : #'api - accessing' }
RustWindowingEventFetcher >> fetcherProcess [
	^ fetcherProcess
]

{ #category : #lifecycle }
RustWindowingEventFetcher >> fetcherProcessPriority [
	^ self subclassResponsibility
]

{ #category : #initialization }
RustWindowingEventFetcher >> initialize [
	super initialize.
	
	eventHandlers := OrderedCollection new.
	session := Smalltalk session
]

{ #category : #lifecycle }
RustWindowingEventFetcher >> installEventFetcher [
	"Initialize the event fetcher process"

	self isRunning
		ifTrue: [ ^ self ].

	self reinstallEventFetcher
]

{ #category : #testing }
RustWindowingEventFetcher >> isRunning [
	"Return true if a fetcher Pharo process is running"
	<return: #Boolean>

	^ self fetcherProcess isNotNil and: [ self fetcherProcess isTerminated not ]
]

{ #category : #'event - handling' }
RustWindowingEventFetcher >> processGlutinEvent: aGlutinEvent [
	self processMappedEvent: aGlutinEvent mapped
]

{ #category : #'event - handling' }
RustWindowingEventFetcher >> processMappedEvent: mappedEvent [
	"Send the event to all registered event handlers"

	(GlutinEventSignal event: mappedEvent) emit.

	"rust-windowing generates synthetic key press and release events to try and work around issues with keys being pressed and held while window focus is lost, see https://github.com/rust-windowing/winit/pull/1296
	However the Ubuntu workspace keyboard shortcut is causing synthetic Pressed events, without the corresponding Release event.
	Ignore synthetic key Pressed events"
	(mappedEvent isKeyboardInputEvent  and:
		[ mappedEvent is_synthetic and:
		[ mappedEvent state = WinitEventInputElementState Pressed ] ]) ifTrue:
				[ ^ self ].

	self eventHandlers do: [ :eachHandler | eachHandler processGlutinEvent: mappedEvent ]
]

{ #category : #lifecycle }
RustWindowingEventFetcher >> reinstallEventFetcher [
	"Force initialize a new event fetcher process. It is not possible to do this if Glutin event loop is not nil"
	
	self
		assert: [ fetcherProcess isNil ]
		description: [ 'Fetcher process must not exist' ].

	fetcherProcess := [ self basicPharoEventLoop ] forkAt: self fetcherProcessPriority.
	fetcherProcess name: 'Glutin Event Fetcher Process'
]

{ #category : #'api - event handlers' }
RustWindowingEventFetcher >> removeEventHandler: anEventHandler [
	(eventHandlers includes: anEventHandler)
		ifFalse: [ ^ self ].
	eventHandlers remove: anEventHandler
]

{ #category : #'api - accessing' }
RustWindowingEventFetcher >> session [
	^ session
]

{ #category : #'system startup' }
RustWindowingEventFetcher >> shutDown: isQuitting [
]

{ #category : #'system startup' }
RustWindowingEventFetcher >> startUp: isInANewSession [
]

{ #category : #initialization }
RustWindowingEventFetcher >> transferEventHandlersFrom: anEventFetcher [
	anEventFetcher ifNil: [ ^ self ].
	
	eventHandlers addAll: anEventFetcher eventHandlers
]
