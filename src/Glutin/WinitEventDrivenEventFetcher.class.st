Class {
	#name : #WinitEventDrivenEventFetcher,
	#superclass : #RustWindowingEventDrivenEventFetcher,
	#category : #'Glutin-Event fetcher'
}

{ #category : #testing }
WinitEventDrivenEventFetcher class >> isAvailable [
	"Only works in a non-worker thread"
	Smalltalk vm isRunningInWorkerThread
		ifTrue: [ ^ false ].

	CommandLineArguments new
		optionAt: 'event-fetcher'
		ifPresent: [ :aValue | ^ aValue = 'winit' ].

	^ true
]

{ #category : #accessing }
WinitEventDrivenEventFetcher class >> priority [
	^ 15
]

{ #category : #'instance creation' }
WinitEventDrivenEventFetcher >> newEventLoop [
	^ WinitCallbackEventLoop new
]
