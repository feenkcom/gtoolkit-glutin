"
Represents an OpenGL context and the Window with which it is associated.
"
Class {
	#name : #GlutinWindowedContext,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'eventsLoop',
		'title',
		'id'
	],
	#category : #Glutin
}

{ #category : #'library path' }
GlutinWindowedContext class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'private - ffi' }
GlutinWindowedContext class >> primCreate: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self ffiCall: #(GlutinWindowedContext glutin_create_windowed_context(
			#GlutinEventLoop anEventsLoop,
			#GlutinWindowBuilder aWindowBuilder,
			#GlutinContextBuilder aContextBuilder))
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
GlutinWindowedContext >> eventsLoop [
	^ eventsLoop
]

{ #category : #initialization }
GlutinWindowedContext >> eventsLoop: aGlutinEventsLoop [
	eventsLoop := aGlutinEventsLoop
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> framebufferExtent [
	<return: #Point>
	| aSizeF64 |
	
	self isValid
		ifFalse: [ ^ 0@0 ].
		
	aSizeF64 := GtBoxerSizeF64 new.
	
	^ [ self primGetFramebufferSize: aSizeF64.
		aSizeF64 asPoint asIntegerPoint
	] ensure: [ aSizeF64 release ]
]

{ #category : #'api - gl' }
GlutinWindowedContext >> getProcAddress: aString [
	^ self primGetProcAddress: aString
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> id [
	<return: #Number>
	| aUint128 |
	
	id
		ifNotNil: [ ^ id ].
		
	self isValid
		ifFalse: [ ^ 0 ].
		
	aUint128 := GtBoxerUint128 new.
	
	^ id := [ self primGetId: aUint128.
		aUint128 asInteger
	] ensure: [ aUint128 release ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> innerExtent [
	<return: #Point>
	| aSizeF64 |
	
	self isValid
		ifFalse: [ ^ 0@0 ].
		
	aSizeF64 := GtBoxerSizeF64 new.
	
	^ [ self primGetInnerSize: aSizeF64.
		aSizeF64 asPoint asIntegerPoint
	] ensure: [ aSizeF64 release ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> innerExtent: aPoint [
	self isValid
		ifFalse: [ ^ self ].

	self primSetInnerWidth: aPoint x height: aPoint y
]

{ #category : #'api - gl' }
GlutinWindowedContext >> isCurrent [
	<return: #Boolean>
	
	^ self isValid
		ifFalse: [ false ]
		ifTrue: [ self primIsCurrent ]
]

{ #category : #testing }
GlutinWindowedContext >> isValid [
	^ handle isNotNil and: [ handle isNull not ]
]

{ #category : #'api - gl' }
GlutinWindowedContext >> makeCurrent [
	| aNewContext |
	
	self isValid
		ifFalse: [ ^ self ].
	
	self isCurrent
		ifTrue: [ ^ self ].

	aNewContext := self primMakeCurrent.
	self setHandle: aNewContext
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> position [
	<return: #Point>
	| aPointF64 |
	
	self isValid
		ifFalse: [ ^ 0@0 ].
	
	aPointF64 := GtBoxerPointF64 new.
	
	^ [ self primGetPosition: aPointF64.
		aPointF64 asPoint asIntegerPoint
	] ensure: [ aPointF64 release ]
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> position: aPoint [
	self isValid
		ifFalse: [ ^ self ].

	self primSetPositionX: aPoint x y: aPoint y
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetFramebufferSize: aSizeF64 [
	^ self ffiCall: #(void glutin_windowed_context_get_framebuffer_size(
		GlutinWindowedContext self,
		GtBoxerSizeF64 aSizeF64))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetId: aUint128 [
	^ self ffiCall: #(void glutin_windowed_context_get_id(
		GlutinWindowedContext self,
		GtBoxerUint128 aUint128))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetInnerSize: aSizeF64 [
	^ self ffiCall: #(void glutin_windowed_context_get_inner_size(
		GlutinWindowedContext self,
		GtBoxerSizeF64 aSizeF64))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetPosition: aPointF64 [
	^ self ffiCall: #(void glutin_windowed_context_get_position(
		GlutinWindowedContext self,
		GtBoxerPointF64 aPointF64))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetProcAddress: procName [
	^ self ffiCall: #( void* glutin_windowed_context_get_proc_address ( GlutinWindowedContext self, String procName ) )
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primIsCurrent [
	^ self ffiCall: #(bool glutin_windowed_context_is_current(GlutinWindowedContext self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primMakeCurrent [
	^ self ffiCall: #(void* glutin_windowed_context_make_current(GlutinWindowedContext self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primRequestRedraw [
	^ self ffiCall: #(void glutin_windowed_context_request_redraw(GlutinWindowedContext self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primResizeLogicalWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_windowed_context_resize_logical(
		GlutinWindowedContext self,
		float64 aWidth,
		float64 aHeight))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primResizePhysicalWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_windowed_context_resize_physical(
		GlutinWindowedContext self,
		float64 aWidth,
		float64 aHeight))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetCursor: aCursorIcon [
	^ self ffiCall: #(void glutin_windowed_context_set_cursor_icon (
		GlutinWindowedContext self,
		GlutinCursorIcon aCursorIcon))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetInnerWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_windowed_context_set_inner_size(
		GlutinWindowedContext self,
		float64 aWidth,
		float64 aHeight))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetPositionX: aX y: aY [
	^ self ffiCall: #(void glutin_windowed_context_set_position(
		GlutinWindowedContext self,
		float64 aX,
		float64 aY))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSetTitle: aGtBoxerString [
	^ self ffiCall: #(void glutin_windowed_context_set_title(GlutinWindowedContext self, GtBoxerString aGtBoxerString))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primSwapBuffers [
	^ self ffiCall: #(void glutin_windowed_context_swap_buffers(GlutinWindowedContext self))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primTest [
	^ self ffiCall: #(void glutin_windowed_context_test(GlutinWindowedContext self))
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
	
	self isValid
		ifFalse: [ ^ self ].
	
	aGtBoxerString := GtBoxerString fromString: aString.
	[self primSetTitle: aGtBoxerString ]
		ensure: [ aGtBoxerString release ]
]
