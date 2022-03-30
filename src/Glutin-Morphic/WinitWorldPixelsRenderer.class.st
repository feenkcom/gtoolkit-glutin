Class {
	#name : #WinitWorldPixelsRenderer,
	#superclass : #GlutinWorldRenderer,
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
			Glutin isSupported and: [
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

{ #category : #rendering }
WinitWorldPixelsRenderer >> displayWorldState: aWorldState ofWorld: aWorld submorphs: submorphs [
	"Obsolete. In Pharo8 each world renderer had to implement its own displayWorldState:ofWorld:submorphs:"
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
		
	worldDamageRects := aWorldState drawWorld: aWorld submorphs: submorphs invalidAreasOn: aCanvas.  
	"repair world's damage on canvas"

	handsToDraw := aWorldState selectHandsToDrawForDamage: worldDamageRects.
	handDamageRects := handsToDraw collect: [:h | h savePatchFrom: aCanvas ].
	allDamage := worldDamageRects, handDamageRects.

	handsToDraw reverseDo: [ :h | aCanvas fullDrawMorph: h ].  "draw hands onto world canvas"
 
	"*make this true to flash damaged areas for testing*"
	WorldState debugShowDamage
		ifTrue: [ aWorld flashRects: allDamage color: Color black ].

	aCanvas finish.

	Glutin critical: [ renderer presentBuffer: buffer areas: allDamage ].

	handsToDraw do: [:h | h restoreSavedPatchOn: aCanvas ].  "restore world canvas under hands"
]

{ #category : #initialization }
WinitWorldPixelsRenderer >> doActivate [
	| anExtent |
	super doActivate.
	
	anExtent := self actualScreenSize max: 1@1.
	
	buffer := self createBufferForExtent: anExtent.
	display := self createFormForBuffer: buffer extent: anExtent.
	
	renderer := PixelsSurface size: anExtent windowHandle: glutinWindow rawWindowHandle
]

{ #category : #rendering }
WinitWorldPixelsRenderer >> drawDuring: aBlock [
	"Starting from Pharo9, the basic rendering is implemented in the AbstractWorldRenderer"
	
	glutinWindow
		ifNil: [ ^ self ].
	
	aBlock value: self canvas
]

{ #category : #rendering }
WinitWorldPixelsRenderer >> updateDamage: rectangles [
	"Starting from Pharo9, the basic rendering is implemented in the AbstractWorldRenderer"

	renderer update: self actualFramebufferSize buffer: display extent pixels: buffer.
	renderer draw
]
