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
	^ display ifNotNil: [ display getCanvas ]
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> checkForNewScreenSize [
	| anExtent |
	
	super checkForNewScreenSize
		ifFalse: [ ^ false ]. 
	
	anExtent := self actualScreenSize.
	pixels resizeBuffer: anExtent.
	display := self createFormForPixels: pixels extent: anExtent.
	
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
	
	pixels := (PixelsWorld size: aSurfaceSize windowHandle: window rawWindowHandle) resizeBuffer: aBufferSize.
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
	"Starting from Pharo9, the basic rendering is implemented in the AbstractWorldRenderer"

	rectangles
		ifEmpty: [ ^ self ].
		
	rectangles do: [ :eachRectangle |
		pixels damage: eachRectangle ].

	pixels draw
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> windowPhysicalSize: aPhysicalSize [
	pixels ifNil: [ ^ self ].
	pixels resizeSurface: (aPhysicalSize asPoint max: (1@1))
]
