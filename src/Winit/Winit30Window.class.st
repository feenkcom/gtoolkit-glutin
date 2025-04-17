Class {
	#name : #Winit30Window,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-External'
}

{ #category : #'initialize-release' }
Winit30Window >> close [
	self primCloseWindow
]

{ #category : #'api - accessing' }
Winit30Window >> currentMonitor [
	^ Winit30Monitor fromNativeHandle: self primGetCurrentMonitor
]

{ #category : #accessing }
Winit30Window >> cursor: aCursorIcon [
	self primSetCursor: aCursorIcon
]

{ #category : #'api - accessing' }
Winit30Window >> focusWindow [
	self primFocusWindow
]

{ #category : #'api - platform' }
Winit30Window >> hwnd [
	^ self primGetHwnd
]

{ #category : #accessing }
Winit30Window >> id [
	<return: #Number>
	^ self primGetId
]

{ #category : #'api - accessing' }
Winit30Window >> innerExtent [
	"Return the size of the content area in physical pixels"
	<return: #Point>

	^ self ffiLibrary getSizeU32From: [ :aSizeU32 |
		self primGetSurfaceSize: aSizeU32 ]
]

{ #category : #'api - accessing' }
Winit30Window >> innerExtent: aPoint [
	"Request the size of the surface area in physical pixels"

	self primRequestSurfaceWidth: aPoint x height: aPoint y
]

{ #category : #'host space - rendering' }
Winit30Window >> makeCurrent [
]

{ #category : #'api - platform' }
Winit30Window >> nsView [
	^ self primGetNSView
]

{ #category : #accessing }
Winit30Window >> position [
	"Return the window position in physical pixels"
	<return: #Point>
	
	^ self ffiLibrary getPointI32From: [ :aPointI32 |
		self primGetPosition: aPointI32 ]
]

{ #category : #accessing }
Winit30Window >> position: aPoint [
	"Set window position in physical pixels"
	<return: #Point>
	
	self primSetPositionX: aPoint x y: aPoint y
]

{ #category : #'private - ffi' }
Winit30Window >> primAddRedrawListener: anExternalFunction thunk: anExternalObject [
	self ffiCall: #(void winit_window_handle_add_redraw_listener(
		self,
		void* anExternalFunction,
		void* anExternalObject))
]

{ #category : #'private - ffi' }
Winit30Window >> primAddResizeListener: anExternalFunction thunk: anExternalObject [
	self ffiCall: #(void winit_window_handle_add_resize_listener(
		self,
		void* anExternalFunction,
		void* anExternalObject))
]

{ #category : #'private - ffi' }
Winit30Window >> primCloseWindow [
	^ self
	ffiCall: #(void winit_window_handle_close(self))
	options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primFocusWindow [
	^ self
		ffiCall: #(void* winit_window_handle_focus_window(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primGetCurrentMonitor [
	^ self
		ffiCall: #(void* winit_window_handle_current_monitor(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primGetHwnd [
	^ self
		ffiCall: #(void* winit_window_handle_get_hwnd(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primGetId [
	^ self ffiCall: #(size_t winit_window_handle_get_id(self))
]

{ #category : #'private - ffi' }
Winit30Window >> primGetNSView [
	^ self
		ffiCall: #(void* winit_window_handle_get_ns_view(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primGetPosition: aPointI32 [
	^ self ffiCall: #(void winit_window_handle_get_position(
		self,
		GtPointBoxI32 aPointI32))
]

{ #category : #'private - ffi' }
Winit30Window >> primGetScaleFactor [
	^ self ffiCall: #(float64 winit_window_handle_get_scale_factor(self))
]

{ #category : #'private - ffi' }
Winit30Window >> primGetSurfaceSize: aSizeU32 [
	^ self ffiCall: #(void winit_window_handle_get_surface_size(
		self,
		GtSizeBoxU32 aSizeU32))
]

{ #category : #'private - ffi' }
Winit30Window >> primGetWaylandDisplay [
	^ self
		ffiCall: #(void* winit_window_handle_get_wayland_display(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primGetWaylandSurface [
	^ self
		ffiCall: #(void* winit_window_handle_get_wayland_surface(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primGetXlibDisplay [
	^ self
		ffiCall: #(void* winit_window_handle_get_xlib_display(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primGetXlibWindow [
	^ self
		ffiCall: #(void* winit_window_handle_get_xlib_window(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primRawDisplayHandle [
	^ self
		ffiCall: #(void* winit_window_handle_raw_display_handle(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primRawWindowHandle [
	^ self
		ffiCall: #(void* winit_window_handle_raw_window_handle(self))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30Window >> primRequestRedraw [
	^ self ffiCall: #(void winit_window_handle_request_redraw(self))
]

{ #category : #'private - ffi' }
Winit30Window >> primRequestSurfaceWidth: aWidth height: aHeight [
	^ self ffiCall: #(void winit_window_handle_request_surface_size(
			self,
			uint32 aWidth,
			uint32 aHeight))
]

{ #category : #'private - ffi' }
Winit30Window >> primSetCursor: aCursorIcon [
	^ self ffiCall: #(void winit_window_handle_set_cursor_icon(
			self,
			WinitCursorIcon aCursorIcon))
		options: #(optEventLoop optNonBlocking)
]

{ #category : #'private - ffi' }
Winit30Window >> primSetPositionX: aX y: aY [
	^ self ffiCall: #(void winit_window_handle_set_outer_position(
			self,
			int32 aX,
			int32 aY))
]

{ #category : #'api - platform' }
Winit30Window >> rawDisplayHandle [
	^ self primRawDisplayHandle
]

{ #category : #'api - platform' }
Winit30Window >> rawWindowHandle [
	^ self primRawWindowHandle
]

{ #category : #'api - accessing' }
Winit30Window >> requestRedraw [
	self isValid
		ifFalse: [ ^ self ].

	self primRequestRedraw
]

{ #category : #'api - accessing' }
Winit30Window >> resize: aPoint [
]

{ #category : #accessing }
Winit30Window >> scaleFactor [
	<return: #Number>

	^ self primGetScaleFactor
]

{ #category : #'window - properties' }
Winit30Window >> title [
	^ ''
]

{ #category : #'window - properties' }
Winit30Window >> title: aString [ 
]

{ #category : #'api - platform' }
Winit30Window >> waylandDisplay [
	^ self primGetWaylandDisplay
]

{ #category : #'api - platform' }
Winit30Window >> waylandSurface [
	^ self primGetWaylandSurface
]

{ #category : #'api - platform' }
Winit30Window >> xlibDisplay [
	^ self primGetXlibDisplay
]

{ #category : #'api - platform' }
Winit30Window >> xlibWindow [
	^ self primGetXlibWindow
]
