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
		'title'
	],
	#category : #Glutin
}

{ #category : #'instance creation' }
GlutinWindowedContext class >> create: anEventsLoop windowBuilder: aWindowBuilder [
	"I choose a context builder so that context creation works"
	| aWindowedContext theProfiles |
	
	theProfiles := GlutinContextBuilder profiles.
	theProfiles withIndexDo: [ :eachProfile :anIndex |
		aWindowedContext := self primCreate: anEventsLoop  windowBuilder: aWindowBuilder contextBuilder: eachProfile.
		aWindowedContext isValid
			ifTrue: [
				GlutinLibrary println: '[Glutin] Profile #', anIndex asString, ' worked'.
				aWindowedContext autoRelease.
				aWindowedContext eventsLoop: anEventsLoop.
				aWindowedContext title: aWindowBuilder title.
				^ aWindowedContext ] ].
		
	self error: 'Could not find a suitable OpenGL profile for this system'
]

{ #category : #'instance creation' }
GlutinWindowedContext class >> create: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	| aWindowedContext |
	
	aWindowedContext := self primCreate: anEventsLoop  windowBuilder: aWindowBuilder contextBuilder: aContextBuilder.
	aWindowedContext autoRelease.
	aWindowedContext eventsLoop: anEventsLoop.
	aWindowedContext title: aWindowBuilder title.

	^ aWindowedContext
]

{ #category : #'instance creation' }
GlutinWindowedContext class >> default [
	<return: #GlutinWindowedContext>
	
	^ self
		create: GlutinEventsLoop new
		windowBuilder: GlutinWindowBuilder new
]

{ #category : #'private - ffi' }
GlutinWindowedContext class >> primCreate: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self ffiCall: #(GlutinWindowedContext glutin_create_windowed_context(
			#GlutinEventsLoop anEventsLoop,
			#GlutinWindowBuilder aWindowBuilder,
			#GlutinContextBuilder aContextBuilder))
]

{ #category : #'private - ffi' }
GlutinWindowedContext class >> primCreateTest: anEventsLoop windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self ffiCall: #(GlutinWindowedContext glutin_window_test(
		GlutinEventsLoop anEventsLoop,
		GlutinWindowBuilder aWindowBuilder,
		GlutinContextBuilder aContextBuilder))
]

{ #category : #'private - ffi' }
GlutinWindowedContext class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_windowed_context(void* aHandle))
]

{ #category : #'instance creation' }
GlutinWindowedContext class >> windowBuilder: aWindowBuilder contextBuilder: aContextBuilder [
	^ self
		create: GlutinEventsLoop new
		windowBuilder: aWindowBuilder
		contextBuilder: aContextBuilder
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> destroy [
	self release
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
	| aSizeU32 |
	
	aSizeU32 := WinitSizeU32 new.
	self primGetFramebufferSize: aSizeU32.

	^ aSizeU32 x @ aSizeU32 y
]

{ #category : #'api - gl' }
GlutinWindowedContext >> getProcAddress: aString [
	^ self primGetProcAddress: aString
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> id [
	<return: #Number>
	| aSizeU64 |

	aSizeU64 := WinitSizeU64 new.
	self primGetId: aSizeU64.
	^ aSizeU64 asInteger
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> innerExtent [
	<return: #Point>
	| aSizeF64 |
	
	aSizeF64 := WinitSizeF64 new.
	self primGetInnerSize: aSizeF64.

	^ (aSizeF64 x @ aSizeF64 y) asIntegerPoint
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> innerExtent: aPoint [
	self primSetInnerWidth: aPoint x height: aPoint y
]

{ #category : #'api - gl' }
GlutinWindowedContext >> isCurrent [
	<return: #Boolean>
	
	^ self primIsCurrent
]

{ #category : #testing }
GlutinWindowedContext >> isValid [
	^ handle isNotNil and: [ handle isNull not ]
]

{ #category : #'api - gl' }
GlutinWindowedContext >> makeCurrent [
	| aNewContext |
	
	self isCurrent
		ifTrue: [ ^ self ].

	aNewContext := self primMakeCurrent.
	self setHandle: aNewContext
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> position [
	<return: #Point>
	| aSizeF64 |
	
	aSizeF64 := WinitSizeF64 new.
	self primGetPosition: aSizeF64.

	^ (aSizeF64 x @ aSizeF64 y) asIntegerPoint
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> position: aPoint [
	self primSetPositionX: aPoint x y: aPoint y
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetFramebufferSize: aSizeU32 [
	^ self ffiCall: #(void glutin_windowed_context_get_framebuffer_size(
		GlutinWindowedContext self,
		WinitSizeU32* aSizeU32))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetId: aSizeU64 [
	^ self ffiCall: #(uint64 glutin_windowed_context_get_id(GlutinWindowedContext self, WinitSizeU64* aSizeU64))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetInnerSize: aSizeF64 [
	^ self ffiCall: #(void glutin_windowed_context_get_inner_size(
		GlutinWindowedContext self,
		WinitSizeF64* aSizeF64))
]

{ #category : #'private - ffi' }
GlutinWindowedContext >> primGetPosition: aSizeF64 [
	^ self ffiCall: #(void glutin_windowed_context_get_position(
		GlutinWindowedContext self,
		WinitSizeF64* aSizeF64))
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
GlutinWindowedContext >> primSetTitle: aString [
	^ self ffiCall: #(void glutin_windowed_context_set_title(GlutinWindowedContext self, String aString))
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
GlutinWindowedContext >> resize: aPoint [
	self primResizeLogicalWidth: aPoint x height: aPoint y
]

{ #category : #'api - gl' }
GlutinWindowedContext >> swapBuffers [
	self primSwapBuffers
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> title [
	<return: #String>

	^ title
]

{ #category : #'api - accessing' }
GlutinWindowedContext >> title: aString [

	self primSetTitle: aString.
	title := aString
]
