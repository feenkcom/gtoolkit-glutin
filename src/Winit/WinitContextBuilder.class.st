Class {
	#name : #WinitContextBuilder,
	#superclass : #FFIExternalObject,
	#traits : 'TWinitLibrary + TWinitPtr',
	#classTraits : 'TWinitLibrary classTrait + TWinitPtr classTrait',
	#category : #Winit
}

{ #category : #'api - instantiation' }
WinitContextBuilder class >> create [
	^ self primCreate autoRelease
]

{ #category : #'private - ffi' }
WinitContextBuilder class >> primCreate [
	^ self ffiCall: #(WinitContextBuilder winit_create_context_builder())
]

{ #category : #'private - ffi' }
WinitContextBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_destroy_context_builder(void* aHandle))
]
