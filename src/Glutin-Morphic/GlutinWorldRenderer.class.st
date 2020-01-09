Class {
	#name : #GlutinWorldRenderer,
	#superclass : #AbstractWorldRenderer,
	#instVars : [
		'glutinWindow',
		'display',
		'renderer',
		'buffer',
		'eventHandler',
		'scaleFactor'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
GlutinWorldRenderer class >> isApplicableFor: aWorld [
	^ Smalltalk isHeadless
		and: [ (CommandLineArguments new hasOption: 'interactive')
			and: [ CommandLineArguments new hasOption: 'glutin' ] ]
]

{ #category : #accessing }
GlutinWorldRenderer class >> priority [ 

	^ 30
]

{ #category : #initialization }
GlutinWorldRenderer >> activateCursor: aCursor withMask: maskForm [

	glutinWindow ifNotNil: [ "osWindow setMouseCursor: aCursor mask: maskForm" ]
]

{ #category : #initialization }
GlutinWorldRenderer >> actualScreenSize [

	^ glutinWindow
		ifNil: [ 240@120 ]
		ifNotNil: [ ((GtFensterPhysicalSize fromPoint: glutinWindow innerExtent) asLogical: self scaleFactor) asPoint asIntegerPoint ]
]

{ #category : #initialization }
GlutinWorldRenderer >> canvas [ 
	^ display ifNotNil: [ display getCanvas ]
]

{ #category : #initialization }
GlutinWorldRenderer >> canvas: aCanvas [
	"nothing we can do here"
]

{ #category : #initialization }
GlutinWorldRenderer >> checkForNewScreenSize [
	| anExtent |
	
	anExtent := self actualScreenSize.

	(display isNil or: [ display extent = anExtent ]) 
		ifTrue: [ ^ self ].

	buffer := self createBufferForExtent: anExtent.
	display := self createFormForBuffer: buffer extent: anExtent.

	world worldState realWindowExtent: anExtent.
	world restoreMorphicDisplay
]

{ #category : #initialization }
GlutinWorldRenderer >> clipboardText [
	^ Clipboard clipboardText
]

{ #category : #initialization }
GlutinWorldRenderer >> clipboardText: aString [
	Clipboard clipboardText: aString asString
]

{ #category : #private }
GlutinWorldRenderer >> createBufferForExtent: anExtent [
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
GlutinWorldRenderer >> createFormForBuffer: aBuffer extent: anExtent [
	^ OSSDL2ExternalForm extent: anExtent depth: 32 bits: aBuffer pixels
]

{ #category : #initialization }
GlutinWorldRenderer >> deactivate [
	world worldState worldRenderer: (NullWorldRenderer forWorld: world).
	
	glutinWindow ifNotNil: [ glutinWindow close. glutinWindow := nil ].

	renderer := nil.
	display := nil.

	GlutinEventsFetcher default removeEventHandler: eventHandler.
	eventHandler := nil
]

{ #category : #initialization }
GlutinWorldRenderer >> deferUpdates: aBoolean [

	^ false
]

{ #category : #operations }
GlutinWorldRenderer >> displayWorldState: aWorldState ofWorld: aWorld submorphs: submorphs [
	"Update this world's display."
	| aCanvas |
		
	"force re-layout if needed"
	submorphs do: [ :m | m fullBounds ]. 
	
	aCanvas := self canvas.
	aCanvas
		ifNil: [ ^ self ].	

	aWorldState checkIfUpdateNeeded
		ifFalse: [ ^ self ].  

	glutinWindow
		ifNil: [ ^ self ].

	Glutin critical: [
		| handsToDraw allDamage worldDamageRects handDamageRects |

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

		renderer presentBuffer: buffer areas: allDamage.

	 	handsToDraw do: [:h | h restoreSavedPatchOn: aCanvas ].  "restore world canvas under hands"
	]
]

{ #category : #initialization }
GlutinWorldRenderer >> doActivate [
	| initialExtent windowBuilder |

	initialExtent := world worldState realWindowExtent ifNil: [ 976@665 ].

	GlutinEventsFetcher default ensureEventsLoop.

	windowBuilder := GlutinWindowBuilder new
		title: Smalltalk image imageFile fullName;
		extent: initialExtent.
		
	glutinWindow := GlutinEventsFetcher default eventsLoop createWindow: windowBuilder.
	eventHandler := (GlutinMorphicEventHandler for: world) window: glutinWindow.
	
	GlutinEventsFetcher default addEventHandler: eventHandler.

	buffer := self createBufferForExtent: initialExtent.
	display := self createFormForBuffer: buffer extent: initialExtent.
	
	renderer := GlutinGLBufferRenderer new window: glutinWindow.

	world extent: initialExtent.
	world worldState doFullRepaint.
	world displayWorld.
	
	GlutinEventsFetcher install
]

{ #category : #operations }
GlutinWorldRenderer >> fullscreenMode: aValue [

	"osWindow fullscreen: aValue.
	self checkForNewScreenSize."
]

{ #category : #accessing }
GlutinWorldRenderer >> icon: aForm [ 

	"osWindow icon: aForm"
]

{ #category : #initialization }
GlutinWorldRenderer >> initialize [
	super initialize.
	
	scaleFactor := nil
]

{ #category : #accessing }
GlutinWorldRenderer >> scaleFactor [
	^ scaleFactor ifNil: [
		glutinWindow
			ifNil: [ 1 ]
			ifNotNil: [ glutinWindow scaleFactor ] ]
]

{ #category : #accessing }
GlutinWorldRenderer >> scaleFactor: aNumber [
	scaleFactor := aNumber.
	self checkForNewScreenSize
]

{ #category : #initialization }
GlutinWorldRenderer >> world: aWorld [
	world := aWorld
]
