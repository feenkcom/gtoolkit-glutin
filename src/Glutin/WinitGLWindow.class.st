Class {
	#name : #WinitGLWindow,
	#superclass : #WinitWindow,
	#instVars : [
		'glWindow'
	],
	#category : #Glutin
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
			#GlutinEventsLoop anEventsLoop,
			#GlutinWindowBuilder aWindowBuilder,
			#GlutinContextBuilder aContextBuilder))
]

{ #category : #'private - ffi' }
WinitGLWindow class >> primRelease: aHandle [

	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_destroy_gl_window(void* aHandle))
]

{ #category : #'instance creation' }
WinitGLWindow class >> windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self
		create: GlutinEventsLoop create
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

{ #category : #accessing }
WinitGLWindow >> innerExtent: aPoint [
	self primSetInnerWidth: aPoint x height: aPoint y
]

{ #category : #misc }
WinitGLWindow >> makeCurrent [
	self primMakeCurrent
]

{ #category : #accessing }
WinitGLWindow >> position [
	^ 0@0
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
WinitGLWindow >> primMakeCurrent [
	^ self ffiCall: #(void winit_gl_window_make_current(WinitGLWindow self))
]

{ #category : #'private - ffi' }
WinitGLWindow >> primSetInnerWidth: aWidth height: aHeight [
	^ self ffiCall: #(void winit_gl_window_set_inner_size(
		WinitGLWindow self,
		float64 aWidth,
		float64 aHeight))
]

{ #category : #'private - ffi' }
WinitGLWindow >> primSetTitle: aString [
	^ self ffiCall: #(void winit_gl_window_set_title(WinitGLWindow self, String aString))
]

{ #category : #'private - ffi' }
WinitGLWindow >> primSwapBuffers [
	^ self ffiCall: #(void winit_gl_window_swap_buffers(WinitGLWindow self))
]

{ #category : #misc }
WinitGLWindow >> swapBuffers [
	self primSwapBuffers
]
