"
Represents an OpenGL context and the Window with which it is associated.
"
Class {
	#name : #GlutinWindowedContext,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'gl'
	],
	#category : #Winit
}

{ #category : #'instance creation' }
GlutinWindowedContext class >> create: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	| aWindowedContext |
	
	aWindowedContext := self primCreate: anEventsLoop  windowBuilder: aWindowBuilder contextBuilder: aContextBuilder.
	aWindowedContext autoRelease.
	aWindowedContext initialize.

	^ aWindowedContext
]

{ #category : #'private - ffi' }
GlutinWindowedContext class >> primCreate: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self ffiCall: #(GlutinWindowedContext glutin_create_windowed_context(
			#GlutinEventsLoop anEventsLoop,
			#GlutinWindowBuilder aWindowBuilder,
			#GlutinContextBuilder aContextBuilder))
]

{ #category : #'private - ffi' }
GlutinWindowedContext class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_windowed_context(void* aHandle))
]

{ #category : #'instance creation' }
GlutinWindowedContext class >> windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self
		create: GlutinEventsLoop new
		windowBuilder: aWindowBuilder
		contextBuilder: aContextBuilder
]

{ #category : #'api - gl' }
GlutinWindowedContext >> getProcAddress: aString [
	^ self primGetProcAddress: aString
]

{ #category : #accessing }
GlutinWindowedContext >> gl [
	<return: #GlutinOpenGL>

	^ gl
]

{ #category : #initialization }
GlutinWindowedContext >> initialize [
	gl := GlutinOpenGL new context: self
]

{ #category : #'api - gl' }
GlutinWindowedContext >> makeCurrent [
	self primMakeCurrent
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetProcAddress: procName [
	^ self ffiCall: #( void* glutin_windowed_context_get_proc_address ( GlutinWindowedContext self, String procName ) )
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primMakeCurrent [
	^ self ffiCall: #(void glutin_windowed_context_make_current(GlutinWindowedContext self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSwapBuffers [
	^ self ffiCall: #(void glutin_windowed_context_swap_buffers(GlutinWindowedContext self))
]

{ #category : #'api - gl' }
GlutinWindowedContext >> swapBuffers [
	self primSwapBuffers
]
