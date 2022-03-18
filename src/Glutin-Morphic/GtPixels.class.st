Class {
	#name : #GtPixels,
	#superclass : #GtBoxerValueBox,
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
GtPixels class >> ffiLibrary [
	^ GtPixelsLibrary
]

{ #category : #'private - ffi' }
GtPixels class >> primCreateWidth: aWidth height: aHeight windowHandle: aWindowHandle [
	^ self ffiCall: #(void* pixels_new_world(uint32 aWidth, uint32 aHeight, void* aWindowHandle)) options: #(optEventLoop)
]

{ #category : #'private - ffi' }
GtPixels class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void pixels_world_drop(void** aHandle)) options: #(optEventLoop)
]

{ #category : #'instance creation' }
GtPixels class >> size: aPoint windowHandle: aWindowHandle [
	self assert: [ aPoint x > 0 ] description: [ 'Width must be positive' ].
	self assert: [ aPoint y > 0 ] description: [ 'Height must be positive' ].

	^ self fromNativeHandle: (self primCreateWidth: aPoint x height: aPoint y windowHandle: aWindowHandle)
]

{ #category : #drawing }
GtPixels >> draw [
	self primDraw
]

{ #category : #'private - ffi' }
GtPixels >> primDraw [
	^ self ffiCall: #(void pixels_world_draw(self)) options: #(optEventLoop)
]

{ #category : #'private - ffi' }
GtPixels >> primUpdateWidth: aWidth height: aHeight pixels: aGtBoxerArrayU8 [
	^ self ffiCall: #(void pixels_world_update(self, uint32 aWidth, uint32 aHeight, GtBoxerArrayU8 aGtBoxerArrayU8))
]

{ #category : #drawing }
GtPixels >> update: aPoint pixels: aGtBoxerArrayU8 [
	self assert: [ aPoint x > 0 ] description: [ 'Width must be positive' ].
	self assert: [ aPoint y > 0 ] description: [ 'Height must be positive' ].
	
	self
		primUpdateWidth: aPoint x
		height: aPoint y
		pixels: aGtBoxerArrayU8
]
