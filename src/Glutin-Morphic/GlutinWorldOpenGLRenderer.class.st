Class {
	#name : #GlutinWorldOpenGLRenderer,
	#superclass : #RustWindowingWorldRenderer,
	#instVars : [
		'display',
		'renderer',
		'buffer'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
GlutinWorldOpenGLRenderer class >> isApplicableFor: aWorld [
	^ GlutinLibrary uniqueInstance hasModule and: [ Glutin isSupported and: [ RustWindowingEventFetcher default eventLoop isGlutin ] ]
]

{ #category : #accessing }
GlutinWorldOpenGLRenderer class >> priority [
	^ 30
]

{ #category : #accessing }
GlutinWorldOpenGLRenderer >> canvas [ 
	^ display ifNotNil: [ display getCanvas ]
]

{ #category : #initialization }
GlutinWorldOpenGLRenderer >> checkForNewScreenSize [
	| anExtent |
		
	super checkForNewScreenSize
		ifFalse: [ ^ false ]. 
	
	anExtent := self actualScreenSize.
	buffer := self createBufferForExtent: anExtent.
	display := self createFormForBuffer: buffer extent: anExtent.

	^ true
]

{ #category : #private }
GlutinWorldOpenGLRenderer >> createBufferForExtent: anExtent [
	| thePixels |

	self
		assert: [ anExtent isIntegerPoint ]
		description: [ 'Must be an integer point' ].

	thePixels := FFIExternalArray externalNewType: FFIUInt32 size: (anExtent x * anExtent y).
	thePixels autoRelease.
	
	^ GlutinGLBuffer new
		extent: anExtent;
		stride: anExtent x;
		pixels: thePixels getHandle
]

{ #category : #private }
GlutinWorldOpenGLRenderer >> createFormForBuffer: aBuffer extent: anExtent [
	^ GlutinWorldExternalForm extent: anExtent depth: 32 bits: aBuffer pixels
]

{ #category : #initialization }
GlutinWorldOpenGLRenderer >> deactivate [
	super deactivate.

	renderer := nil.
	display := nil
]

{ #category : #initialization }
GlutinWorldOpenGLRenderer >> doActivate [
	| anExtent |
	super doActivate.
	
	anExtent := self actualScreenSize.
	
	buffer := self createBufferForExtent: anExtent.
	display := self createFormForBuffer: buffer extent: anExtent.
	
	renderer := GlutinGLBufferRenderer new window: window
]

{ #category : #rendering }
GlutinWorldOpenGLRenderer >> drawDuring: aBlock [
	"Starting from Pharo9, the basic rendering is implemented in the AbstractWorldRenderer"
	
	window
		ifNil: [ ^ self ].
	
	aBlock value: self canvas
]

{ #category : #rendering }
GlutinWorldOpenGLRenderer >> updateDamage: rectangles [
	"Starting from Pharo9, the basic rendering is implemented in the AbstractWorldRenderer"
	rectangles
		ifEmpty: [ ^ self ].

	Glutin critical: [ renderer presentBuffer: buffer areas: rectangles ]
]
