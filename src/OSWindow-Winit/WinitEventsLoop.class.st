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
