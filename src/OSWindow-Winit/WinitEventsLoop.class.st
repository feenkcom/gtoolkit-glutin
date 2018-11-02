Class {
	#name : #WinitEventsLoop,
	#superclass : #FFIExternalObject,
	#traits : 'TWinitLibrary + TWinitPtr',
	#classTraits : 'TWinitLibrary classTrait + TWinitPtr classTrait',
	#category : #'OSWindow-Winit'
}

{ #category : #'api - instantiation' }
WinitEventsLoop class >> create [
	^ self primCreate autoRelease
]

{ #category : #'private - ffi' }
WinitEventsLoop class >> primCreate [
	^ self ffiCall: #(WinitEventsLoop winit_create_events_loop())
]

{ #category : #'private - ffi' }
WinitEventsLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_destroy_events_loop(void* aHandle))
]

{ #category : #events }
WinitEventsLoop >> pollEvents: aBlock [
	| aCallback baseEvent |
	
	baseEvent := WinitEvent new.
	aCallback := WinitEventsLoopCallback on: [ aBlock value: baseEvent. true ].

	self primPollEvents: aCallback event: baseEvent
]

{ #category : #'private - ffi' }
WinitEventsLoop >> primPollEvents: aCallback event: aWinitEvent [
	^ self ffiCall: #(void winit_events_loop_poll_events(
		WinitEventsLoop self,
		WinitEvent *aWinitEvent,
		WinitEventsLoopCallback aCallback))
]

{ #category : #'private - ffi' }
WinitEventsLoop >> primRunForever: aCallback event: aWinitEvent [
	^ self ffiCall: #(void winit_events_loop_run_forever(
		WinitEventsLoop self,
		WinitEvent *aWinitEvent,
		WinitEventsLoopCallback aCallback))
]

{ #category : #events }
WinitEventsLoop >> runForever: aBlock [
	| aCallback baseEvent |
	
	baseEvent := WinitEvent new.
	aCallback := WinitEventsLoopCallback on: [ 
		| aResult |
		aResult := aBlock value: baseEvent.
		(aResult == true or: [ aResult == false ])
			ifTrue: [ aResult ]
			ifFalse: [ self error: 'Result must be a boolean'. false ] ].

	self primRunForever: aCallback event: baseEvent
]
