Class {
	#name : #WinitWindow,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit',
	#classTraits : 'TWinit classTrait',
	#instVars : [
		'eventLoop',
		'title',
		'id'
	],
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
WinitWindow class >> primRelease: aHandle [

	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_window_drop (void** aHandle))
]

{ #category : #'initialize-release' }
WinitWindow >> close [
	self eventLoop closeWindow: self
]

{ #category : #'api - accessing' }
WinitWindow >> cursor: aCursorIcon [
	self primSetCursor: aCursorIcon
]

{ #category : #'api - accessing' }
WinitWindow >> eventLoop [
	^ eventLoop
]

{ #category : #'api - accessing' }
WinitWindow >> eventLoop: anObject [
	eventLoop := anObject
]

{ #category : #'api - accessing' }
WinitWindow >> id [
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
WinitWindow >> innerExtent [
	"Return the size of the content area in physical pixels"
	<return: #Point>

	^ GtBoxerSizeU32 newDuring: [ :aSizeU32 |
		self primGetInnerSize: aSizeU32.
		aSizeU32 asPoint asIntegerPoint ]
]

{ #category : #'api - accessing' }
WinitWindow >> innerExtent: aPoint [
	"Change the size of the content area in physical pixels"

	self primSetInnerWidth: aPoint x height: aPoint y
]

{ #category : #'host space - rendering' }
WinitWindow >> makeCurrent [
]

{ #category : #'api - platform' }
WinitWindow >> nsView [
	^ self primGetNSView
]

{ #category : #'api - accessing' }
WinitWindow >> position [
	"Return the window position in physical pixels"
	<return: #Point>
	
	^ GtBoxerPointI32 newDuring: [ :aPointI32 |
		self primGetPosition: aPointI32.
		aPointI32 asPoint ]
]

{ #category : #'api - accessing' }
WinitWindow >> position: aPoint [
	self primSetPositionX: aPoint x y: aPoint y
]

{ #category : #'private - ffi' }
WinitWindow >> primGetId: aUint128 [
	^ self ffiCall: #(void winit_window_get_id(
		self,
		GtBoxerUint128 aUint128))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetInnerSize: aSizeU32 [
	^ self ffiCall: #(void winit_window_get_inner_size(
		self,
		GtBoxerSizeU32 aSizeU32))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetNSView [
	^ self ffiCall: #(void* winit_window_get_ns_view(self)) options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindow >> primGetPosition: aPointI32 [
	^ self ffiCall: #(void winit_window_get_position(
		self,
		GtBoxerPointI32 aPointI32))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetScaleFactor [
	^ self ffiCall: #(float64 winit_window_get_scale_factor(self))
]

{ #category : #'private - ffi' }
WinitWindow >> primRawWindowHandle [
	^ self ffiCall: #(void* winit_windowed_context_raw_window_handle (self))
]

{ #category : #'private - ffi' }
WinitWindow >> primRequestRedraw [
	^ self ffiCall: #(void winit_window_request_redraw(self)) options: #(optEventLoop optNonBlocking)
]

{ #category : #'private - ffi' }
WinitWindow >> primSetCursor: aCursorIcon [
	^ self ffiCall: #(void winit_window_set_cursor_icon (
		self,
		WinitCursorIcon aCursorIcon))
]

{ #category : #'private - ffi' }
WinitWindow >> primSetInnerWidth: aWidth height: aHeight [
	^ self ffiCall: #(void winit_window_set_inner_size(
		self,
		uint32 aWidth,
		uint32 aHeight))
]

{ #category : #'private - ffi' }
WinitWindow >> primSetPositionX: aX y: aY [
	^ self ffiCall: #(void winit_window_set_position(
		self,
		int32 aX,
		int32 aY))
]

{ #category : #'private - ffi' }
WinitWindow >> primSetTitle: aGtBoxerString [
	^ self ffiCall: #(void winit_window_set_title(self, GtBoxerString aGtBoxerString))
]

{ #category : #'api - accessing' }
WinitWindow >> rawWindowHandle [
	^ self primRawWindowHandle
]

{ #category : #'api - accessing' }
WinitWindow >> requestRedraw [
	self isValid
		ifFalse: [ ^ self ].

	self primRequestRedraw
]

{ #category : #'api - accessing' }
WinitWindow >> resize: aPoint [
]

{ #category : #'api - accessing' }
WinitWindow >> scaleFactor [
	<return: #Number>

	^ self primGetScaleFactor
]

{ #category : #'host space - rendering' }
WinitWindow >> swapBuffers [
]

{ #category : #'api - accessing' }
WinitWindow >> title [
	<return: #String>

	^ title
]

{ #category : #'api - accessing' }
WinitWindow >> title: aString [
	| aGtBoxerString |

	title := aString.
	aGtBoxerString := GtBoxerString fromString: aString.
	[self primSetTitle: aGtBoxerString ]
		ensure: [ aGtBoxerString release ]
]
