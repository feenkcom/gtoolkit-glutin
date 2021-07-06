Class {
	#name : #GlutinWorldOpenGLRenderer,
	#superclass : #GlutinWorldRenderer,
	#instVars : [
		'display',
		'renderer',
		'buffer'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
GlutinWorldOpenGLRenderer class >> isApplicableFor: aWorld [
	^ Glutin isSupported
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

{ #category : #operations }
GlutinWorldOpenGLRenderer >> displayWorldState: aWorldState ofWorld: aWorld submorphs: submorphs [
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
GlutinWorldOpenGLRenderer >> doActivate [
	| anExtent |
	super doActivate.
	
	anExtent := self actualScreenSize.
	
	buffer := self createBufferForExtent: anExtent.
	display := self createFormForBuffer: buffer extent: anExtent.
	
	renderer := GlutinGLBufferRenderer new window: glutinWindow
]
