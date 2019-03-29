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

{ #category : #'instance creation' }
GlutinContextBuilder class >> new [
	^ self create
]

{ #category : #'private - ffi' }
GlutinContextBuilder class >> primCreate [
	^ self ffiCall: #(#GlutinContextBuilder glutin_create_context_builder())
]

{ #category : #'private - ffi' }
GlutinContextBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_context_builder(void* aHandle))
]
