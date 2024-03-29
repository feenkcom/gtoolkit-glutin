"
Represents an OpenGL context and the Window with which it is associated.


"
Class {
	#name : #GlutinWindowedContext,
	#superclass : #GlutinContext,
	#instVars : [
		'title',
		'id'
	],
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
GlutinWindowedContext class >> primCreate: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self ffiCall: #(void* glutin_create_windowed_context(
			#GlutinCallbackEventLoop anEventsLoop,
			GlutinWindowBuilder aWindowBuilder,
			GlutinContextBuilder aContextBuilder))
]

{ #category : #'private - ffi' }
GlutinWindowedContext class >> primRelease: aHandle [

	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_destroy_windowed_context (void* aHandle))
]

{ #category : #'initialize-release' }
GlutinWindowedContext >> close [
	self eventLoop closeWindow: self
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> cursor: aCursorIcon [
	self primSetCursor: aCursorIcon
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> id [
	<return: #Number>
	id
		ifNotNil: [ ^ id ].
	
	^ id := self ffiLibrary getU128From: [ :aUint128 | self primGetId: aUint128 ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> innerExtent [
	"Return the size of the content area in physical pixels"
	<return: #Point>

	^ self ffiLibrary
		getSizeU32From: [ :aSizeU32 | self primGetInnerSize: aSizeU32 ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> innerExtent: aPoint [
	"Change the size of the content area in physical pixels"

	self primSetInnerWidth: aPoint x height: aPoint y
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> pixelFormat [
	<return: #GlutinPixelFormat>
	
	^ GlutinPixelFormat fromNativeHandle: self primGetPixelFormat
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> position [
	"Return the window position in physical pixels"
	<return: #Point>

	^ self ffiLibrary
		getPointI32From: [ :aPointI32 | self primGetPosition: aPointI32 ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> position: aPoint [
	self primSetPositionX: aPoint x y: aPoint y
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetApi [
	^ self ffiCall: #(GlutinContextApi glutin_windowed_context_get_api(self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetId: aUint128 [
	^ self ffiCall: #(void glutin_windowed_context_get_id(
		self,
		GtBoxerUint128 aUint128))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetInnerSize: aSizeU32 [
	^ self ffiCall: #(void glutin_windowed_context_get_inner_size(
		self,
		GtSizeBoxU32 aSizeU32))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetPixelFormat [
	^ self ffiCall: #(void* glutin_windowed_context_get_pixel_format(self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetPosition: aPointI32 [
	^ self ffiCall: #(void glutin_windowed_context_get_position(
		self,
		GtPointBoxI32 aPointI32))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetProcAddress: aStringBox [
	^ self ffiCall: #(void* glutin_windowed_context_get_proc_address(self, GtStringBox aStringBox))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetScaleFactor [
	^ self ffiCall: #(float64 glutin_windowed_context_get_scale_factor(self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primIsCurrent [
	^ self ffiCall: #(bool glutin_windowed_context_is_current(self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primMakeCurrent [
	^ self ffiCall: #(void glutin_windowed_context_make_current(self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primRawWindowHandle [
	^ self ffiCall: #(void* glutin_windowed_context_raw_window_handle (self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primRequestRedraw [
	^ self ffiCall: #(void glutin_windowed_context_request_redraw(self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primResizeWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_windowed_context_resize (
		self,
		uint32 aWidth,
		uint32 aHeight))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetCursor: aCursorIcon [
	^ self ffiCall: #(void glutin_windowed_context_set_cursor_icon(self, WinitCursorIcon aCursorIcon))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetInnerWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_windowed_context_set_inner_size(
		self,
		uint32 aWidth,
		uint32 aHeight))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetPositionX: aX y: aY [
	^ self ffiCall: #(void glutin_windowed_context_set_position(
		self,
		int32 aX,
		int32 aY))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetTitle: aStringBox [
	^ self ffiCall: #(void glutin_windowed_context_set_title(
		self,
		GtStringBox aStringBox))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSwapBuffers [
	^ self ffiCall: #(void glutin_windowed_context_swap_buffers(self))
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> rawWindowHandle [
	^ self primRawWindowHandle
]

{ #category : #'api - gl' }
GlutinWindowedContext >> requestRedraw [
	self isValid
		ifFalse: [ ^ self ].

	self primRequestRedraw
]

{ #category : #'api - gl' }
GlutinWindowedContext >> resize: aPoint [
	self isValid
		ifFalse: [ ^ self ].

	self primResizeWidth: aPoint x height: aPoint y
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> scaleFactor [
	<return: #Number>

	^ self primGetScaleFactor
]

{ #category : #'api - gl' }
GlutinWindowedContext >> swapBuffers [
	self isValid
		ifFalse: [ ^ self ].

	self primSwapBuffers
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> title [
	<return: #String>

	^ title
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> title: aString [
	title := aString.
	
	self ffiLibrary
		newString: aString
		during: [ :aStringBox | self primSetTitle: aStringBox ]
]
