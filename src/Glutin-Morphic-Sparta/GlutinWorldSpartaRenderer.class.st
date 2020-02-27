Class {
	#name : #GlutinWorldSpartaRenderer,
	#superclass : #GlutinWorldRenderer,
	#instVars : [
		'display',
		'renderer',
		'buffer',
		'canvas'
	],
	#category : #'Glutin-Morphic-Sparta'
}

{ #category : #accessing }
GlutinWorldSpartaRenderer class >> isApplicableFor: aWorld [
	^ Smalltalk isHeadless
		and: [ (CommandLineArguments new hasOption: 'interactive')
			and: [ CommandLineArguments new hasOption: 'glutin' ] ]
]

{ #category : #accessing }
GlutinWorldSpartaRenderer class >> priority [ 

	^ 35
]

{ #category : #accessing }
GlutinWorldSpartaRenderer >> canvas [ 
	^ canvas
]

{ #category : #initialization }
GlutinWorldSpartaRenderer >> checkForNewScreenSize [
	| anExtent |
	
	super checkForNewScreenSize
		ifFalse: [ ^ false ]. 
	
	anExtent := self actualFramebufferSize.
	
	self initializeBufferAndCanvasForExtent: anExtent.

	^ true
]

{ #category : #private }
GlutinWorldSpartaRenderer >> createBufferForExtent: anExtent [
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
GlutinWorldSpartaRenderer >> createFormForBuffer: aBuffer extent: anExtent [
	^ OSSDL2ExternalForm extent: anExtent depth: 32 bits: aBuffer pixels
]

{ #category : #private }
GlutinWorldSpartaRenderer >> createSpartaCanvasForBuffer: aBuffer [
	^ SkiaCanvas
		createForData: aBuffer pixels
		extent: aBuffer extent
		stride: aBuffer extent x * 4
		format: SkiaColorType BGRA8888
]

{ #category : #initialization }
GlutinWorldSpartaRenderer >> deactivate [
	super deactivate.

	renderer := nil.
	display := nil.
	canvas := nil
]

{ #category : #operations }
GlutinWorldSpartaRenderer >> displayWorldState: aWorldState ofWorld: aWorld submorphs: submorphs [
	"Update this world's display."
	| aCanvas handsToDraw allDamage worldDamageRects handDamageRects |
		
	"force re-layout if needed"
	submorphs do: [ :m | m fullBounds ]. 
	
	aCanvas := self canvas.
	aCanvas
		ifNil: [ ^ self ].	

	aWorldState checkIfUpdateNeeded
		ifFalse: [ ^ self ].  

	glutinWindow
		ifNil: [ ^ self ].
	
	aCanvas canvas transform
		by: [ :t | t scaleBy: self scaleFactor ]
		during: [	 worldDamageRects := aWorldState drawWorld: aWorld submorphs: submorphs invalidAreasOn: aCanvas ].

	"repair world's damage on canvas"
	handsToDraw := aWorldState selectHandsToDrawForDamage: worldDamageRects.
	handDamageRects := handsToDraw collect: [:h | h savePatchFromWrapper: aCanvas scaled: self scaleFactor ].
	allDamage := worldDamageRects, handDamageRects.

	aCanvas canvas transform
		by: [ :t | t scaleBy: self scaleFactor ]
		during: [	 handsToDraw reverseDo: [ :h | aCanvas fullDrawMorph: h ] ]. "draw hands onto world canvas".

	aCanvas finish.
		
	Glutin critical: [ renderer presentBuffer: buffer areas: allDamage ].

	handsToDraw do: [:h | h restoreSavedPatchOn: aCanvas ].
	aCanvas finish.  "restore world canvas under hands"
]

{ #category : #initialization }
GlutinWorldSpartaRenderer >> doActivate [
	| anExtent |
	super doActivate.
	
	anExtent := self actualFramebufferSize.
	
	self initializeBufferAndCanvasForExtent: anExtent.
	
	renderer := GlutinGLBufferRenderer new window: glutinWindow
]

{ #category : #initialization }
GlutinWorldSpartaRenderer >> initializeBufferAndCanvasForExtent: anExtent [
	buffer := self createBufferForExtent: anExtent.
	display := self createFormForBuffer: buffer extent: anExtent.

	canvas := SpartaWrapperCanvas on: (self createSpartaCanvasForBuffer: buffer).
	canvas formCanvas: display getCanvas
]
