Class {
	#name : #PixelsSurface,
	#superclass : #GtBoxerValueBox,
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
PixelsSurface class >> ffiLibrary [
	^ PixelsLibrary
]

{ #category : #'private - ffi' }
PixelsSurface class >> primCreateWidth: aWidth height: aHeight windowHandle: aWindowHandle [
	^ self ffiCall: #(void* pixels_new_world(uint32 aWidth, uint32 aHeight, void* aWindowHandle)) options: #(optEventLoop)
]

{ #category : #'private - ffi' }
PixelsSurface class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void pixels_world_drop(void** aHandle)) options: #(optEventLoop)
]

{ #category : #'instance creation' }
PixelsSurface class >> size: aPoint windowHandle: aWindowHandle [
	self assert: [ aPoint x > 0 ] description: [ 'Width must be positive' ].
	self assert: [ aPoint y > 0 ] description: [ 'Height must be positive' ].

	^ self fromNativeHandle: (self primCreateWidth: aPoint x height: aPoint y windowHandle: aWindowHandle)
]

{ #category : #drawing }
PixelsSurface >> draw [
	self primDraw
]

{ #category : #'private - ffi' }
PixelsSurface >> primDraw [
	^ self ffiCall: #(void pixels_world_draw(self)) options: #(optEventLoop)
]

{ #category : #'private - ffi' }
PixelsSurface >> primUpdateSurfaceWidth: aSurfaceWidth height: aSurfaceHeight bufferWidth: aBufferWidth height: aBufferHeight pixels: aGtBoxerArrayU8 [
	^ self ffiCall: #(void pixels_world_update(
		self,
		uint32 aSurfaceWidth,
		uint32 aSurfaceHeight,
		uint32 aBufferWidth,
		uint32 aBufferHeight,
		GtBoxerArrayU8 aGtBoxerArrayU8))
]

{ #category : #drawing }
PixelsSurface >> update: aSurfaceSize buffer: aBufferSize pixels: aGtBoxerArrayU8 [
	self assert: [ aSurfaceSize x > 0 ] description: [ 'Surface width must be positive' ].
	self assert: [ aSurfaceSize y > 0 ] description: [ 'Surface height must be positive' ].
	self assert: [ aBufferSize x > 0 ] description: [ 'Buffer width must be positive' ].
	self assert: [ aBufferSize y > 0 ] description: [ 'Buffer height must be positive' ].
	
	self
		primUpdateSurfaceWidth: aSurfaceSize x
		height: aSurfaceSize y
		bufferWidth: aBufferSize x
		height: aBufferSize y
		pixels: aGtBoxerArrayU8
]
