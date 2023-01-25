Class {
	#name : #PixelsWorld,
	#superclass : #GtBoxerValueBox,
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
PixelsWorld class >> ffiLibrary [
	^ PixelsLibrary uniqueInstance
]

{ #category : #'private - ffi' }
PixelsWorld class >> primCreateWidth: aWidth height: aHeight windowHandle: aWindowHandle displayHandle: aDisplayHandle [
	^ self ffiCall: #(void* pixels_new_world(
		uint32 aWidth,
		uint32 aHeight,
		void* aWindowHandle,
		void* aDisplayHandle)) options: #(optEventLoop)
]

{ #category : #'private - ffi' }
PixelsWorld class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void pixels_world_drop(void** aHandle)) options: #(optEventLoop)
]

{ #category : #'instance creation' }
PixelsWorld class >> size: aPoint windowHandle: aWindowHandle displayHandle: aDisplayHandle [
	self assert: [ aPoint x > 0 ] description: [ 'Width must be positive' ].
	self assert: [ aPoint y > 0 ] description: [ 'Height must be positive' ].

	^ self fromNativeHandle: (self
		primCreateWidth: aPoint x
		height: aPoint y
		windowHandle: aWindowHandle
		displayHandle: aDisplayHandle)
]

{ #category : #drawing }
PixelsWorld >> buffer [
	<return: #GtBoxerArrayU8>

	^ GtArrayBoxU8
		fromNativeHandle: self primGetBuffer
		library: self ffiLibrary
]

{ #category : #drawing }
PixelsWorld >> bufferDuring: aBlock [
	^ GtArrayBoxU8
		fromNativeHandle: self primGetBuffer
		library: self ffiLibrary
		during: aBlock
]

{ #category : #drawing }
PixelsWorld >> damage: aRectangle [
	self
		primDamageLeft: (aRectangle left max: 0)
		top: (aRectangle top max: 0)
		width: (aRectangle width max: 0)
		height: (aRectangle height max: 0)
]

{ #category : #drawing }
PixelsWorld >> draw [
	self primDraw
]

{ #category : #'private - ffi' }
PixelsWorld >> primDamageLeft: aLeft top: aTop width: aWidth height: aHeight [
	^ self ffiCall: #(void pixels_world_damage(
		self,
		size_t aLeft,
		size_t aTop,
		size_t aWidth,
		size_t aHeight))
]

{ #category : #'private - ffi' }
PixelsWorld >> primDraw [
	^ self ffiCall: #(void pixels_world_draw(self)) options: #(optEventLoop optNonBlocking)
]

{ #category : #'private - ffi' }
PixelsWorld >> primGetBuffer [
	^ self ffiCall: #(void* pixels_world_get_buffer(self))
]

{ #category : #'private - ffi' }
PixelsWorld >> primResizeBufferWidth: aBufferWidth height: aBufferHeight [
	^ self ffiCall: #(void pixels_world_resize_buffer(
		self,
		size_t aBufferWidth,
		size_t aBufferHeight))
]

{ #category : #'private - ffi' }
PixelsWorld >> primResizeSurfaceWidth: aSurfaceWidth height: aSurfaceHeight [
	^ self ffiCall: #(void pixels_world_resize_surface(
		self,
		size_t aSurfaceWidth,
		size_t aSurfaceHeight))
]

{ #category : #drawing }
PixelsWorld >> resizeBuffer: anExtent [
	"Resize the pixel buffer"

	self
		primResizeBufferWidth: anExtent x
		height: anExtent y
]

{ #category : #drawing }
PixelsWorld >> resizeSurface: anExtent [
	self
		primResizeSurfaceWidth: anExtent x
		height: anExtent y
]
