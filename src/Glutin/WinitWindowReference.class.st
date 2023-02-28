Class {
	#name : #WinitWindowReference,
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
WinitWindowReference class >> primRelease: aHandle [
	self shouldNotImplement
]

{ #category : #'private - ffi' }
WinitWindowReference class >> primReleaseWindow: aWindowHandle eventLoop: anEventLoop [
	self
		ffiCall: #(void winit_window_ref_destroy (void* anEventLoop, void* aWindowHandle))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference class >> release: aHandle [
	| anEventLoop aWindowHandle |
	
	anEventLoop := aHandle first.
	aWindowHandle := aHandle second.

	anEventLoop isNull
		"A handle may already be null, if garbage collector did his job before us :)"
		ifTrue: [ ^ self ].
		
	aWindowHandle isNull
		"A handle may already be null, if garbage collector did his job before us :)"
		ifTrue: [ ^ self ].

	self warning: [ '(release) Ptr: ', aWindowHandle value asString ].
	
	"When an image is saved during finalization step (how?) and then re-opened on a new
	machine the ffi library path is sometimes different which results in an error.
	However, since the object is anyway invalid due to a new session we can continue and just ignore it nulling
	the pointer"
	[ self primReleaseWindow: aWindowHandle eventLoop: anEventLoop. aWindowHandle beNull ]
		on: Error do: [ :anError | 
			NonInteractiveTranscript stdout
				nextPutAll: ('[Warning] Failed to release {1}({2}) due to {3}' format: { 
					self name.
					aHandle printString.
					anError printString });
				cr.
			aWindowHandle beNull ].
	self
		assert: [ aWindowHandle isNull ]
		description: [ 'Pointer must be null after release' ]
]

{ #category : #'initialize-release' }
WinitWindowReference >> close [
	self eventLoop closeWindow: self
]

{ #category : #'api - accessing' }
WinitWindowReference >> cursor: aCursorIcon [
	self primSetCursor: aCursorIcon
]

{ #category : #'api - accessing' }
WinitWindowReference >> eventLoop [
	^ eventLoop
]

{ #category : #'api - accessing' }
WinitWindowReference >> eventLoop: anObject [
	eventLoop := anObject
]

{ #category : #'api - platform' }
WinitWindowReference >> hwnd [
	^ self primGetHwnd
]

{ #category : #'api - accessing' }
WinitWindowReference >> id [
	<return: #Number>

	id
		ifNotNil: [ ^ id ].
	
	^ id := self ffiLibrary getU128From: [ :aUint128 | self primGetId: aUint128 ]
]

{ #category : #'api - accessing' }
WinitWindowReference >> innerExtent [
	"Return the size of the content area in physical pixels"
	<return: #Point>

	^ self ffiLibrary getSizeU32From: [ :aSizeU32 |
		self primGetInnerSize: aSizeU32 ]
]

{ #category : #'api - accessing' }
WinitWindowReference >> innerExtent: aPoint [
	"Change the size of the content area in physical pixels"

	self primSetInnerWidth: aPoint x height: aPoint y
]

{ #category : #'host space - rendering' }
WinitWindowReference >> makeCurrent [
]

{ #category : #'api - platform' }
WinitWindowReference >> nsView [
	^ self primGetNSView
]

{ #category : #'api - accessing' }
WinitWindowReference >> position [
	"Return the window position in physical pixels"
	<return: #Point>
	
	^ self ffiLibrary getPointI32From: [ :aPointI32 |
		self primGetPosition: aPointI32 ]
]

{ #category : #'api - accessing' }
WinitWindowReference >> position: aPoint [
	self primSetPositionX: aPoint x y: aPoint y
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetHwnd [
	^ self
		ffiCall: #(void* winit_window_ref_get_hwnd(
			void* eventLoop,
			self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetId: aUint128 [
	^ self ffiCall: #(void winit_window_ref_get_id(
		self,
		GtU128Box aUint128))
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetInnerSize: aSizeU32 [
	^ self ffiCall: #(void winit_window_ref_get_inner_size(
		self,
		GtSizeBoxU32 aSizeU32))
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetNSView [
	^ self ffiCall: #(void* winit_window_ref_get_ns_view(
			void* eventLoop,
			self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetPosition: aPointI32 [
	^ self ffiCall: #(void winit_window_ref_get_position(
		self,
		GtPointBoxI32 aPointI32))
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetRawId [
	^ self ffiCall: #(void* winit_window_ref_get_raw_id(self))
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetScaleFactor [
	^ self ffiCall: #(float64 winit_window_ref_get_scale_factor(self))
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetXlibDisplay [
	^ self ffiCall: #(void* winit_window_ref_get_xlib_display(
			void* eventLoop,
			self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primGetXlibWindow [
	^ self ffiCall: #(ulong winit_window_ref_get_xlib_window(
			void* eventLoop,
			self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primRawDisplayHandle [
	^ self
		ffiCall: #(void* winit_window_ref_raw_display_handle(void* eventLoop, self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primRawWindowHandle [
	^ self
		ffiCall: #(void* winit_window_ref_raw_window_handle(void* eventLoop, self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primRequestRedraw [
	^ self ffiCall: #(void winit_window_ref_request_redraw(
		void* eventLoop,
		self))
		options: #(optEventLoop optNonBlocking)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primSetCursor: aCursorIcon [
	^ self ffiCall: #(void winit_window_ref_set_cursor_icon (
			void* eventLoop,
			self,
			WinitCursorIcon aCursorIcon))
		options: #(optEventLoop optNonBlocking)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primSetInnerWidth: aWidth height: aHeight [
	^ self ffiCall: #(void winit_window_ref_set_inner_size(
			void* eventLoop,
			self,
			uint32 aWidth,
			uint32 aHeight))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primSetPositionX: aX y: aY [
	^ self ffiCall: #(void winit_window_ref_set_position(
			void* eventLoop,
			self,
			int32 aX,
			int32 aY))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitWindowReference >> primSetTitle: aStringBox [
	^ self ffiCall: #(void winit_window_ref_set_title(
			void* eventLoop,
			self,
			GtStringBox aStringBox))
		options: #(optEventLoop)
]

{ #category : #'api - accessing' }
WinitWindowReference >> rawDisplayHandle [
	^ self primRawDisplayHandle
]

{ #category : #'api - accessing' }
WinitWindowReference >> rawWindowHandle [
	^ self primRawWindowHandle
]

{ #category : #'api - accessing' }
WinitWindowReference >> requestRedraw [
	self isValid
		ifFalse: [ ^ self ].

	self primRequestRedraw
]

{ #category : #'api - accessing' }
WinitWindowReference >> resize: aPoint [
]

{ #category : #'external resource management' }
WinitWindowReference >> resourceData [
	^ { eventLoop getHandle. handle }
]

{ #category : #'api - accessing' }
WinitWindowReference >> scaleFactor [
	<return: #Number>

	^ self primGetScaleFactor
]

{ #category : #'host space - rendering' }
WinitWindowReference >> swapBuffers [
]

{ #category : #'api - accessing' }
WinitWindowReference >> title [
	<return: #String>

	^ title
]

{ #category : #'api - accessing' }
WinitWindowReference >> title: aString [
	title := aString.

	self ffiLibrary
		newString: aString
		during: [ :aStringBox | self primSetTitle: aStringBox ]
]

{ #category : #'api - platform' }
WinitWindowReference >> xlibDisplay [
	^ self primGetXlibDisplay
]

{ #category : #'api - platform' }
WinitWindowReference >> xlibWindow [
	^ self primGetXlibWindow
]
