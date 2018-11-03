Class {
	#name : #WinitGLWindow,
	#superclass : #WinitWindow,
	#instVars : [
		'glWindow'
	],
	#category : #Winit
}

{ #category : #'instance creation' }
WinitGLWindow class >> create: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	| aGlWindow |
	
	aGlWindow := self primCreate: anEventsLoop  windowBuilder: aWindowBuilder contextBuilder: aContextBuilder.
	aGlWindow autoRelease.
	
	aGlWindow initializeWith: anEventsLoop.

	^ aGlWindow
]

{ #category : #'private - ffi' }
WinitGLWindow class >> primCreate: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self ffiCall: #(WinitGLWindow winit_create_gl_window_with_context(
			WinitEventsLoop anEventsLoop,
			WinitWindowBuilder aWindowBuilder,
			WinitContextBuilder aContextBuilder))
]

{ #category : #'private - ffi' }
WinitGLWindow class >> primRelease: aHandle [

	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_destroy_gl_window(void* aHandle))
]

{ #category : #'instance creation' }
WinitGLWindow class >> windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self
		create: WinitEventsLoop create
		windowBuilder: aWindowBuilder
		contextBuilder: aContextBuilder
]

{ #category : #'private - ffi' }
WinitGLWindow >> primSetTitle: aString [
	^ self ffiCall: #(void winit_gl_window_set_title(WinitGLWindow self, String aString))
]
