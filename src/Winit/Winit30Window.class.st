Class {
	#name : #Winit30Window,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-External'
}

{ #category : #'as yet unclassified' }
Winit30Window >> close [
]

{ #category : #'as yet unclassified' }
Winit30Window >> cursor: aCursorIcon [
]

{ #category : #'as yet unclassified' }
Winit30Window >> id [
	<return: #Number>
	^ self primGetId
]

{ #category : #'as yet unclassified' }
Winit30Window >> innerExtent [
	"Return the size of the content area in physical pixels"
	<return: #Point>

	^ self ffiLibrary getSizeU32From: [ :aSizeU32 |
		self primGetSurfaceSize: aSizeU32 ]
]

{ #category : #'as yet unclassified' }
Winit30Window >> innerExtent: aPoint [
	"Request the size of the surface area in physical pixels"

	self primRequestSurfaceWidth: aPoint x height: aPoint y
]

{ #category : #'as yet unclassified' }
Winit30Window >> makeCurrent [
]

{ #category : #'as yet unclassified' }
Winit30Window >> nsView [
	^ self primGetNSView
]

{ #category : #'as yet unclassified' }
Winit30Window >> position [
	"Return the window position in physical pixels"
	<return: #Point>
	
	^ self ffiLibrary getPointI32From: [ :aPointI32 |
		self primGetPosition: aPointI32 ]
]

{ #category : #'as yet unclassified' }
Winit30Window >> primAddRedrawListener: anExternalFunction thunk: anExternalObject [
	self ffiCall: #(void winit_window_handle_add_redraw_listener(
		self,
		void* anExternalFunction,
		void* anExternalObject))
]

{ #category : #'as yet unclassified' }
Winit30Window >> primAddResizeListener: anExternalFunction thunk: anExternalObject [
	self ffiCall: #(void winit_window_handle_add_resize_listener(
		self,
		void* anExternalFunction,
		void* anExternalObject))
]

{ #category : #'as yet unclassified' }
Winit30Window >> primGetId [
	^ self ffiCall: #(size_t winit_window_handle_get_id(self))
]

{ #category : #'as yet unclassified' }
Winit30Window >> primGetNSView [
	^ self
		ffiCall: #(void* winit_window_handle_get_ns_view(self))
		options: #(optEventLoop)
]

{ #category : #'as yet unclassified' }
Winit30Window >> primGetPosition: aPointI32 [
	^ self ffiCall: #(void winit_window_handle_get_position(
		self,
		GtPointBoxI32 aPointI32))
]

{ #category : #'as yet unclassified' }
Winit30Window >> primGetScaleFactor [
	^ self ffiCall: #(float64 winit_window_handle_get_scale_factor(self))
]

{ #category : #'as yet unclassified' }
Winit30Window >> primGetSurfaceSize: aSizeU32 [
	^ self ffiCall: #(void winit_window_handle_get_surface_size(
		self,
		GtSizeBoxU32 aSizeU32))
]

{ #category : #'as yet unclassified' }
Winit30Window >> primRequestRedraw [
	^ self ffiCall: #(void winit_window_handle_request_redraw(self))
]

{ #category : #'as yet unclassified' }
Winit30Window >> primRequestSurfaceWidth: aWidth height: aHeight [
	^ self ffiCall: #(void winit_window_handle_request_surface_size(
			self,
			uint32 aWidth,
			uint32 aHeight))
]

{ #category : #'as yet unclassified' }
Winit30Window >> requestRedraw [
	self isValid
		ifFalse: [ ^ self ].

	self primRequestRedraw
]

{ #category : #'as yet unclassified' }
Winit30Window >> resize: aPoint [
]

{ #category : #'as yet unclassified' }
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
