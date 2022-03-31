Class {
	#name : #WinitEventDrivenEventFetcher,
	#superclass : #RustWindowingEventDrivenEventFetcher,
	#category : #'Glutin-Event fetcher'
}

{ #category : #testing }
WinitEventDrivenEventFetcher class >> isAvailable [
	^ OSPlatform current isMacOS and: [ Smalltalk vm isRunningInWorkerThread not ]
]

{ #category : #accessing }
WinitEventDrivenEventFetcher class >> priority [
	^ 15
]

{ #category : #'instance creation' }
WinitEventDrivenEventFetcher >> newEventLoop [
	^ WinitCallbackEventLoop new
]
