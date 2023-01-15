Class {
	#name : #WinitWorldPixelsRenderer,
	#superclass : #RustWindowingWorldRenderer,
	#instVars : [
		'display',
		'pixels'
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
	"Return a canvas to draw the morphic world on"
	<return: #FormCanvas>

	^ display
		ifNotNil: [ :aDisplay | aDisplay getCanvas ]
		ifNil: [ (Form extent: 1@1 depth: 32) getCanvas ]
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> checkForNewScreenSize [	
	super checkForNewScreenSize
		ifFalse: [ ^ false ]. 
	
	pixels resizeBuffer: worldExtent.
	pixels resizeSurface: surfaceExtent.

	display := self createFormForPixels: pixels extent: worldExtent.
	
	^ true
]

{ #category : #private }
WinitWorldPixelsRenderer >> createFormForPixels: aPixelsWorld extent: aBufferExtent [
	^ aPixelsWorld bufferDuring: [ :aGtBoxerArrayU8 |
		GlutinWorldExternalForm
			extent: aBufferExtent depth: 32
			bits: aGtBoxerArrayU8 data getHandle ]
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> deactivate [
	super deactivate.

	pixels := nil.
	display := nil
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> doActivate [
	| aBufferSize aSurfaceSize |
	super doActivate.
	
	aBufferSize := self actualScreenSize max: 1@1.
	aSurfaceSize := window innerExtent max: 1@1.
	
	pixels := (PixelsWorld
		size: aSurfaceSize
		windowHandle: window rawWindowHandle
		displayHandle: window rawDisplayHandle)
			resizeBuffer: aBufferSize.
	display := self createFormForPixels: pixels extent: aBufferSize
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
	pixels ifNotNil: [ :thePixels |
		rectangles
			ifNotEmpty: [ :theRectangles |
				theRectangles do: [ :eachRectangle |
					thePixels damage: eachRectangle ].
				thePixels draw ] ]
]
