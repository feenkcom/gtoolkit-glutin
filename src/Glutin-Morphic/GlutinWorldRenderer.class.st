Class {
	#name : #GlutinWorldRenderer,
	#superclass : #AbstractWorldRenderer,
	#instVars : [
		'glutinWindow',
		'eventHandler',
		'scaleFactor',
		'cursorMap',
		'windowLogicalSize',
		'worldExtent'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
GlutinWorldRenderer class >> activeCycleLapse [
	"Milliseconds"

	^ 20
]

{ #category : #accessing }
GlutinWorldRenderer class >> idleCycleLapse [
	"Milliseconds"

	^ 1000
]

{ #category : #accessing }
GlutinWorldRenderer >> activateCursor: aCursor withMask: maskForm [

	glutinWindow ifNotNil: [ cursorMap
		at: aCursor
		ifPresent: [ :aGlutinCursor | glutinWindow cursor: aGlutinCursor ]
		ifAbsent: [ glutinWindow cursor: WinitCursorIcon Default ] ]
]

{ #category : #accessing }
GlutinWorldRenderer >> actualFramebufferSize [
	"Return the physical screen size"
	<return: #Point>

	^ ((FensterLogicalSize fromPoint: worldExtent) asPhysical: self scaleFactor) rounded asPoint
]

{ #category : #accessing }
GlutinWorldRenderer >> actualScreenSize [
	"Return the logical screen size"
	<return: #Point>

	^ worldExtent
]

{ #category : #accessing }
GlutinWorldRenderer >> canvas [
	^ self subclassResponsibility
]

{ #category : #accessing }
GlutinWorldRenderer >> canvas: aCanvas [
	"nothing we can do here"
]

{ #category : #'api - cycle' }
GlutinWorldRenderer >> checkForNewScreenSize [
	"Is called on every frame"
	<return: #Boolean>
	| anExtent |

	anExtent := self windowLogicalSize asPoint.

	(worldExtent = anExtent)
		ifTrue: [ ^ false ].
	
	worldExtent := anExtent.
	world worldState realWindowExtent: anExtent.
	world restoreMorphicDisplay.
	
	world extent: anExtent.
	world worldState doFullRepaint.
	
	^ true
]

{ #category : #accessing }
GlutinWorldRenderer >> clipboardText [
	^ Clipboard clipboardText
]

{ #category : #accessing }
GlutinWorldRenderer >> clipboardText: aString [
	Clipboard clipboardText: aString
]

{ #category : #initialization }
GlutinWorldRenderer >> convertWindowMouseEventPosition: aPosition [

	^ (aPosition / self scaleFactor) rounded
]

{ #category : #activation }
GlutinWorldRenderer >> deactivate [
	world worldState worldRenderer: (NullWorldRenderer forWorld: world).
	
	glutinWindow ifNotNil: [
		glutinWindow close.
		glutinWindow := nil ].

	RustWindowingEventFetcher default removeEventHandler: eventHandler.
	eventHandler := nil.
	
	WorldState MinCycleLapse: self class idleCycleLapse
]

{ #category : #'api - cycle' }
GlutinWorldRenderer >> deferUpdates: aBoolean [
	"Defered updates are not supported"

	^ false
]

{ #category : #'api - cycle' }
GlutinWorldRenderer >> displayWorldState: aWorldState ofWorld: aWorld submorphs: submorphs [
	"Update this world's display."
	
	self subclassResponsibility
]

{ #category : #activation }
GlutinWorldRenderer >> doActivate [
	self initializeCursorMap.
	self initializeGlutinWindow.

	world worldState realWindowExtent: glutinWindow innerExtent.
	world extent: (glutinWindow innerExtent / scaleFactor) floor asIntegerPoint.
	world worldState doFullRepaint.
	
	WorldState MinCycleLapse: self class activeCycleLapse
]

{ #category : #operations }
GlutinWorldRenderer >> fullscreenMode: aValue [

	"osWindow fullscreen: aValue.
	self checkForNewScreenSize."
]

{ #category : #accessing }
GlutinWorldRenderer >> glutinWindow [
	^ glutinWindow
]

{ #category : #accessing }
GlutinWorldRenderer >> icon: aForm [ 

	"osWindow icon: aForm"
]

{ #category : #initialization }
GlutinWorldRenderer >> initializeCursorMap [
	"Use newFromPairs: to allow duplications"
	cursorMap := Dictionary newFromPairs: { 
		Cursor normal . WinitCursorIcon Default.
		Cursor overEditableText . WinitCursorIcon Text.
		Cursor resizeLeft . WinitCursorIcon EwResize.
		Cursor resizeRight . WinitCursorIcon EwResize.
		Cursor resizeTop . WinitCursorIcon NsResize.
		Cursor resizeBottom . WinitCursorIcon NsResize.
		
		Cursor resizeBottomLeft . WinitCursorIcon NeswResize.
		Cursor resizeBottomRight . WinitCursorIcon NwseResize.
		Cursor resizeTopLeft . WinitCursorIcon NwseResize.
		Cursor resizeTopRight . WinitCursorIcon NeswResize.
	}
]

{ #category : #initialization }
GlutinWorldRenderer >> initializeGlutinWindow [
	| aWindowBuilder eventLoop |
	
	"#realWindowExtent is the logical size of the window"
	windowLogicalSize := FensterLogicalSize
		fromPoint: ((world worldState realWindowExtent ifNil: [ 976 @ 665 ]) asIntegerPoint).
		
	worldExtent := windowLogicalSize asPoint.

	eventLoop := RustWindowingEventFetcher default eventLoop.
	aWindowBuilder := eventLoop windowBuilder
		title: Smalltalk image imageFile basename;
		extent: windowLogicalSize asPoint.	

	glutinWindow := eventLoop createWindow: aWindowBuilder.
	scaleFactor := glutinWindow scaleFactor.

	eventHandler := (WinitMorphicEventHandler for: world) window: glutinWindow.
	RustWindowingEventFetcher default addEventHandler: eventHandler
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
	scaleFactor := aNumber
]

{ #category : #accessing }
GlutinWorldRenderer >> windowLogicalSize [
	"Return the logical size of the window. The value can be changed anytime during the world cycle.
	It is advised to only use it during #checkForNewScreenSize"
	<return: #FensterLogicalSize>

	^ windowLogicalSize
]

{ #category : #accessing }
GlutinWorldRenderer >> windowLogicalSize: aFensterLogicalSize [
	| roundedSize |
	
	roundedSize := aFensterLogicalSize rounded.
	roundedSize isZero
		ifTrue: [ self error: 'Window size must be positive' ].
	
	windowLogicalSize := roundedSize
]

{ #category : #accessing }
GlutinWorldRenderer >> world: aWorld [
	world := aWorld
]
