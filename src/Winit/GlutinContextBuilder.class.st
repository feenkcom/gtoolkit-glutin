Class {
	#name : #GlutinContextBuilder,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#category : #Winit
}

{ #category : #'api - instantiation' }
GlutinContextBuilder class >> create [
	^ self primCreate autoRelease
]

{ #category : #'library path' }
GlutinContextBuilder class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'private - ffi' }
GlutinContextBuilder class >> primCreate [
	^ self ffiCall: #(#GlutinContextBuilder winit_create_context_builder())
]

{ #category : #'private - ffi' }
GlutinContextBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_destroy_context_builder(void* aHandle))
]
