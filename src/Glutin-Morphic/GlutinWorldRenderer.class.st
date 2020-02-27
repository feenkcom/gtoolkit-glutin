Class {
	#name : #GlutinWorldRenderer,
	#superclass : #AbstractWorldRenderer,
	#instVars : [
		'glutinWindow',
		'eventHandler',
		'scaleFactor',
		'cursorMap'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
GlutinWorldRenderer >> activateCursor: aCursor withMask: maskForm [

	glutinWindow ifNotNil: [ cursorMap
		at: aCursor
		ifPresent: [ :aGlutinCursor | glutinWindow cursor: aGlutinCursor ]
		ifAbsent: [ glutinWindow cursor: GlutinCursorIcon Default ] ]
]

{ #category : #accessing }
GlutinWorldRenderer >> actualFramebufferSize [
	"Return the physical screen size"
	<return: #Point>

	^ glutinWindow
		ifNil: [ 240@120 ]
		ifNotNil: [ (GtFensterPhysicalSize fromPoint: glutinWindow innerExtent) asPoint asIntegerPoint ]
]

{ #category : #accessing }
GlutinWorldRenderer >> actualScreenSize [
	"Return the logical screen size"
	<return: #Point>

	^ glutinWindow
		ifNil: [ 240@120 ]
		ifNotNil: [ ((GtFensterPhysicalSize fromPoint: glutinWindow innerExtent) asLogical: self scaleFactor) asPoint asIntegerPoint ]
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
	
	anExtent := self actualScreenSize.

	(world extent = anExtent)
		ifTrue: [ ^ false ].

	world worldState realWindowExtent: self actualFramebufferSize.
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

{ #category : #activation }
GlutinWorldRenderer >> deactivate [
	world worldState worldRenderer: (NullWorldRenderer forWorld: world).
	
	glutinWindow ifNotNil: [
		glutinWindow close.
		glutinWindow := nil ].

	GlutinEventsFetcher default removeEventHandler: eventHandler.
	eventHandler := nil
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
	world worldState doFullRepaint
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
GlutinWorldRenderer >> initializeCursorMap [
	"Use newFromPairs: to allow duplications"
	cursorMap := Dictionary newFromPairs: { 
		Cursor normal . GlutinCursorIcon Default.
		Cursor overEditableText . GlutinCursorIcon Text.
		Cursor resizeLeft . GlutinCursorIcon EwResize.
		Cursor resizeRight . GlutinCursorIcon EwResize.
		Cursor resizeTop . GlutinCursorIcon NsResize.
		Cursor resizeBottom . GlutinCursorIcon NsResize.
		
		Cursor resizeBottomLeft . GlutinCursorIcon NeswResize.
		Cursor resizeBottomRight . GlutinCursorIcon NwseResize.
		Cursor resizeTopLeft . GlutinCursorIcon NwseResize.
		Cursor resizeTopRight . GlutinCursorIcon NeswResize.
	}
]

{ #category : #initialization }
GlutinWorldRenderer >> initializeGlutinWindow [
	| anInitialExtent aWindowBuilder |

	anInitialExtent := world worldState realWindowExtent
		ifNil: [ 976@665 ].
	
	GlutinEventsFetcher default ensureEventsLoop.
	
	aWindowBuilder := GlutinWindowBuilder new
		title: Smalltalk image imageFile basename;
		extent: anInitialExtent.

	glutinWindow := GlutinEventsFetcher default eventsLoop createWindow: aWindowBuilder.
	scaleFactor := glutinWindow scaleFactor.
	eventHandler := (GlutinMorphicEventHandler for: world) window: glutinWindow.

	GlutinEventsFetcher default addEventHandler: eventHandler.
	GlutinEventsFetcher install
]

{ #category : #accessing }
GlutinWorldRenderer >> realScreenSize [
	"Return the physical screen size"
	<return: #Point>

	^ glutinWindow
		ifNil: [ 240@120 ]
		ifNotNil: [ glutinWindow innerExtent ]
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

{ #category : #accessing }
GlutinWorldRenderer >> world: aWorld [
	world := aWorld
]
