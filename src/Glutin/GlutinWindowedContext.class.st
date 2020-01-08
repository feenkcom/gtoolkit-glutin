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
			GlutinEventLoop anEventsLoop,
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
	self eventsLoop closeWindow: self
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> cursor: aCursorIcon [
	self primSetCursor: aCursorIcon
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> framebufferExtent [
	"Return the size of the content area in physical pixels (without scale factor)"
	<return: #Point>

	^ GtBoxerSizeU32 newDuring: [ :aSizeU32 |
		self primGetFramebufferSize: aSizeU32.
		aSizeU32 asPoint ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> id [
	<return: #Number>
	| aUint128 |
	
	id
		ifNotNil: [ ^ id ].

	aUint128 := GtBoxerUint128 new.
	
	^ id := [
		self primGetId: aUint128.
		aUint128 asInteger
	] ensure: [ aUint128 release ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> innerExtent [
	"Return the size of the content area in logical pixels (accounting the scale factor)"
	<return: #Point>

	^ GtBoxerSizeF64 newDuring: [ :aSizeF64 |
		self primGetInnerSize: aSizeF64.
		aSizeF64 asPoint asIntegerPoint ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> innerExtent: aPoint [
	"Change the size of the content area in logical pixels (accounting the scale factor)"

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
	
	^ GtBoxerPointI32 newDuring: [ :aPointI32 |
		self primGetPosition: aPointI32.
		aPointI32 asPoint ]
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
GlutinWindowedContext >> primGetFramebufferSize: aSizeU32 [
	^ self ffiCall: #(void glutin_windowed_context_get_framebuffer_size(
		self,
		GtBoxerSizeU32 aSizeU32))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetId: aUint128 [
	^ self ffiCall: #(void glutin_windowed_context_get_id(
		self,
		GtBoxerUint128 aUint128))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetInnerSize: aSizeF64 [
	^ self ffiCall: #(void glutin_windowed_context_get_inner_size(
		self,
		GtBoxerSizeF64 aSizeF64))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetPixelFormat [
	^ self ffiCall: #(void* glutin_windowed_context_get_pixel_format(self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetPosition: aPointI32 [
	^ self ffiCall: #(void glutin_windowed_context_get_position(
		self,
		GtBoxerPointI32 aPointI32))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetProcAddress: aGtBoxerString [
	^ self ffiCall: #(void* glutin_windowed_context_get_proc_address(self, GtBoxerString aGtBoxerString))
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
GlutinWindowedContext >> primRequestRedraw [
	^ self ffiCall: #(void glutin_windowed_context_request_redraw(self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primResizeLogicalWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_windowed_context_resize_logical(
		self,
		float64 aWidth,
		float64 aHeight))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primResizePhysicalWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_windowed_context_resize_physical(
		self,
		float64 aWidth,
		float64 aHeight))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetCursor: aCursorIcon [
	^ self ffiCall: #(void glutin_windowed_context_set_cursor_icon (
		self,
		GlutinCursorIcon aCursorIcon))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetInnerWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_windowed_context_set_inner_size(
		self,
		float64 aWidth,
		float64 aHeight))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetPositionX: aX y: aY [
	^ self ffiCall: #(void glutin_windowed_context_set_position(
		self,
		i32 aX,
		i32 aY))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetTitle: aGtBoxerString [
	^ self ffiCall: #(void glutin_windowed_context_set_title(self, GtBoxerString aGtBoxerString))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSwapBuffers [
	^ self ffiCall: #(void glutin_windowed_context_swap_buffers(self))
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

	self primResizeLogicalWidth: aPoint x height: aPoint y
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
	| aGtBoxerString |

	title := aString.
	aGtBoxerString := GtBoxerString fromString: aString.
	[self primSetTitle: aGtBoxerString ]
		ensure: [ aGtBoxerString release ]
]
