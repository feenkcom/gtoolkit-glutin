Class {
	#name : #GlutinEventDrivenEventFetcher,
	#superclass : #RustWindowingEventDrivenEventFetcher,
	#category : #'Glutin-Event fetcher'
}

{ #category : #accessing }
GlutinEventDrivenEventFetcher class >> isAvailable [
	"Only works in a non-worker thread"
	Smalltalk vm isRunningInWorkerThread
		ifTrue: [ ^ false ].

	CommandLineArguments new
		optionAt: 'event-fetcher'
		ifPresent: [ :aValue | ^ aValue = 'glutin' ].

	^ true
]

{ #category : #accessing }
GlutinEventDrivenEventFetcher class >> priority [
	^ 10
]

{ #category : #'private - event loop' }
GlutinEventDrivenEventFetcher >> ensureEventLoop [
	"I make sure that Glutin events loop (external) is valid"

	(currentSession == Smalltalk session
		and: [ eventsLoop isNotNil
			and: [ eventsLoop isNull not ] ])
		ifTrue: [ ^ self ].

	currentSession := Smalltalk session.
	eventsLoop := self newEventLoop
]

{ #category : #'instance creation' }
GlutinEventDrivenEventFetcher >> newEventLoop [
	^ GlutinCallbackEventLoop new
]
