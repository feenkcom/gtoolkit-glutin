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

{ #category : #accessing }
WinitGLWindow >> framebufferExtent [
	<return: #Point>
	| aSizeU32 |
	
	aSizeU32 := WinitSizeU32 new.
	self primGetFramebufferSize: aSizeU32.

	^ aSizeU32 x @ aSizeU32 y
]

{ #category : #accessing }
WinitGLWindow >> innerExtent [
	<return: #Point>
	| aSizeF64 |
	
	aSizeF64 := WinitSizeF64 new.
	self primGetInnerSize: aSizeF64.

	^ (aSizeF64 x @ aSizeF64 y) asIntegerPoint
]

{ #category : #'private - ffi' }
WinitGLWindow >> primGetFramebufferSize: aSizeU32 [
	^ self ffiCall: #(void winit_gl_window_get_framebuffer_size(
		WinitGLWindow self,
		WinitSizeU32* aSizeU32))
]

{ #category : #'private - ffi' }
WinitGLWindow >> primGetInnerSize: aSizeF64 [
	^ self ffiCall: #(void winit_gl_window_get_inner_size(
		WinitGLWindow self,
		WinitSizeF64* aSizeF64))
]

{ #category : #'private - ffi' }
WinitGLWindow >> primSetTitle: aString [
	^ self ffiCall: #(void winit_gl_window_set_title(WinitGLWindow self, String aString))
]
