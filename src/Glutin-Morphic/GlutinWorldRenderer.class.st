Class {
	#name : #GlutinWorldRenderer,
	#superclass : #AbstractWorldRenderer,
	#instVars : [
		'glutinWindow',
		'display',
		'renderer',
		'buffer',
		'eventHandler'
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
		ifNotNil: [ glutinWindow innerExtent ]
]

{ #category : #initialization }
GlutinWorldRenderer >> canvas [ 
	^ display getCanvas
]

{ #category : #initialization }
GlutinWorldRenderer >> canvas: x [

	self flag: #jajaja
]

{ #category : #initialization }
GlutinWorldRenderer >> checkForNewScreenSize [

	(display isNil or: [display extent = self actualScreenSize]) 
		ifTrue: [ ^ self ].

	display := Form extent: self actualScreenSize depth: 32.
	buffer := self createBufferFor: display.

	world worldState realWindowExtent: self actualScreenSize.
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
GlutinWorldRenderer >> createBufferFor: aForm [
	| thePixels |

	thePixels := FFIExternalArray externalNewType: FFIUInt32 size: aForm stride * aForm height.
	thePixels autoRelease.
	
	^ GlutinGLBuffer new
		extent: aForm extent;
		stride: aForm stride;
		pixels: thePixels getHandle.
]

{ #category : #initialization }
GlutinWorldRenderer >> deactivate [
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
	| handsToDraw allDamage worldDamageRects handDamageRects thePixels |

	 "force re-layout if needed"
	submorphs do: [ :m | m fullBounds ]. 

	aWorldState checkIfUpdateNeeded
		"display is already up-to-date"
		ifFalse: [ ^ self ].  

	glutinWindow ifNil: [ ^ self ].

	worldDamageRects := aWorldState drawWorld: aWorld submorphs: submorphs invalidAreasOn: self canvas.  
	"repair world's damage on canvas"

	handsToDraw := aWorldState selectHandsToDrawForDamage: worldDamageRects.
	handDamageRects := handsToDraw collect: [:h | h savePatchFrom: self canvas].
	allDamage := worldDamageRects, handDamageRects.

	handsToDraw reverseDo: [ :h | self canvas fullDrawMorph: h ].  "draw hands onto world canvas"
 
	"*make this true to flash damaged areas for testing*"
	WorldState debugShowDamage
		ifTrue: [ aWorld flashRects: allDamage color: Color black ].

	self canvas finish.
	
	"quickly copy altered rects of canvas to Display:"
	thePixels := FFIExternalArray fromHandle: buffer pixels type: FFIUInt32 size: display stride * display height.
	thePixels atAll: (1 to: display bits size) putAll: display bits.
	renderer presentBuffer: buffer areas: allDamage.

 	handsToDraw do: [:h | h restoreSavedPatchOn: self canvas].  "restore world canvas under hands"
	
]

{ #category : #initialization }
GlutinWorldRenderer >> doActivate [
	| initialExtent windowBuilder |

	initialExtent := world worldState realWindowExtent ifNil: [976@665].

	GlutinEventsFetcher default ensureEventsLoop.

	windowBuilder := GlutinWindowBuilder new
		title: Smalltalk image imageFile fullName;
		extent: initialExtent.
		
	glutinWindow := GlutinEventsFetcher default eventsLoop createWindow: windowBuilder.
	eventHandler := (GlutinMorphicEventHandler for: world) window: glutinWindow.
	
	GlutinEventsFetcher default addEventHandler: eventHandler.

	display := Form extent: initialExtent depth: 32.
	buffer := self createBufferFor: display.
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
GlutinWorldRenderer >> world: aWorld [
	world := aWorld
]
