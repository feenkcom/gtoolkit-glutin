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
	self
		ffiCall: #(void winit_window_drop (void* aHandle))
		options: #(optEventLoop)
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

{ #category : #'api - platform' }
WinitWindow >> hwnd [
	^ self primGetHwnd
]

{ #category : #'api - accessing' }
WinitWindow >> id [
	<return: #Number>

	id
		ifNotNil: [ ^ id ].

	^ id := self ffiLibrary getU128From: [ :aUint128 | self primGetId: aUint128 ]
]

{ #category : #'api - accessing' }
WinitWindow >> innerExtent [
	"Return the size of the content area in physical pixels"
	<return: #Point>

	^ self ffiLibrary getSizeU32From: [ :aSizeU32 |
		self primGetInnerSize: aSizeU32 ]
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
	
	^ self ffiLibrary getPointI32From: [ :aPointI32 |
		self primGetPosition: aPointI32 ]
]

{ #category : #'api - accessing' }
WinitWindow >> position: aPoint [
	self primSetPositionX: aPoint x y: aPoint y
]

{ #category : #'private - ffi' }
WinitWindow >> primGetHwnd [
	^ self ffiCall: #(void* winit_window_get_hwnd (self))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetId: aUint128 [
	^ self ffiCall: #(void winit_window_get_id(
		self,
		GtU128Box aUint128))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetInnerSize: aSizeU32 [
	^ self ffiCall: #(void winit_window_get_inner_size(
		self,
		GtSizeBoxU32 aSizeU32))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetNSView [
	^ self ffiCall: #(void* winit_window_get_ns_view(self))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetPosition: aPointI32 [
	^ self ffiCall: #(void winit_window_get_position(
		self,
		GtPointBoxI32 aPointI32))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetScaleFactor [
	^ self ffiCall: #(float64 winit_window_get_scale_factor(self))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetXlibDisplay [
	^ self ffiCall: #(void* winit_window_get_xlib_display(self))
]

{ #category : #'private - ffi' }
WinitWindow >> primGetXlibWindow [
	^ self ffiCall: #(ulong winit_window_get_xlib_window(self))
]

{ #category : #'private - ffi' }
WinitWindow >> primRawDisplayHandle [
	^ self ffiCall: #(void* winit_window_raw_display_handle(self))
]

{ #category : #'private - ffi' }
WinitWindow >> primRawWindowHandle [
	^ self ffiCall: #(void* winit_window_raw_window_handle(self))
]

{ #category : #'private - ffi' }
WinitWindow >> primRequestRedraw [
	^ self ffiCall: #(void winit_window_request_redraw(self))
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
WinitWindow >> primSetTitle: aStringBox [
	^ self ffiCall: #(void winit_window_set_title(self, GtStringBox aStringBox))
]

{ #category : #'api - accessing' }
WinitWindow >> rawDisplayHandle [
	^ self primRawDisplayHandle
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
	title := aString.

	self ffiLibrary
		newString: aString
		during: [ :aStringBox | self primSetTitle: aStringBox ]
]

{ #category : #'api - platform' }
WinitWindow >> xlibDisplay [
	^ self primGetXlibDisplay
]

{ #category : #'api - platform' }
WinitWindow >> xlibWindow [
	^ self primGetXlibWindow
]
