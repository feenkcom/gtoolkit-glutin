Class {
	#name : #WinitWorldPixelsRenderer,
	#superclass : #RustWindowingWorldRenderer,
	#instVars : [
		'display',
		'renderer',
		'buffer'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
WinitWorldPixelsRenderer class >> isApplicableFor: aWorld [
	^ WinitLibrary uniqueInstance hasModule and: [
		PixelsLibrary uniqueInstance hasModule and: [
			Winit isSupported and: [
				RustWindowingEventFetcher default eventLoop isWinit ] ] ]
]

{ #category : #accessing }
WinitWorldPixelsRenderer class >> priority [
	^ 40
]

{ #category : #accessing }
WinitWorldPixelsRenderer >> canvas [ 
	^ display ifNotNil: [ display getCanvas ]
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> checkForNewScreenSize [
	| anExtent |
	
	super checkForNewScreenSize
		ifFalse: [ ^ false ]. 
	
	anExtent := self actualScreenSize.
	buffer := self createBufferForExtent: anExtent.
	display := self createFormForBuffer: buffer extent: anExtent.
	
	^ true
]

{ #category : #private }
WinitWorldPixelsRenderer >> createBufferForExtent: anExtent [
	self
		assert: [ anExtent isIntegerPoint ]
		description: [ 'Must be an integer point' ].
		
	^ GtBoxerArrayU8 new: anExtent x * anExtent y * 4 withAll: 0
]

{ #category : #private }
WinitWorldPixelsRenderer >> createFormForBuffer: aBuffer extent: anExtent [
	^ GlutinWorldExternalForm extent: anExtent depth: 32 bits: aBuffer data getHandle
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> deactivate [
	super deactivate.

	renderer := nil.
	display := nil
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> doActivate [
	| anExtent |
	super doActivate.
	
	anExtent := self actualScreenSize max: 1@1.
	
	buffer := self createBufferForExtent: anExtent.
	display := self createFormForBuffer: buffer extent: anExtent.
	
	renderer := PixelsSurface size: anExtent windowHandle: window rawWindowHandle
]

{ #category : #rendering }
WinitWorldPixelsRenderer >> drawDuring: aBlock [
	"Starting from Pharo9, the basic rendering is implemented in the AbstractWorldRenderer"
	
	window
		ifNil: [ ^ self ].
	
	aBlock value: self canvas
]

{ #category : #rendering }
WinitWorldPixelsRenderer >> updateDamage: rectangles [
	"Starting from Pharo9, the basic rendering is implemented in the AbstractWorldRenderer"

	rectangles
		ifEmpty: [ ^ self ].

	renderer update: self actualFramebufferSize buffer: display extent pixels: buffer.
	renderer draw
]
