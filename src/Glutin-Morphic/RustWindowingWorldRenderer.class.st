Class {
	#name : #RustWindowingWorldRenderer,
	#superclass : #AbstractWorldRenderer,
	#instVars : [
		'eventHandler',
		'scaleFactor',
		'cursorMap',
		'windowLogicalSize',
		'windowPhysicalSize',
		'worldExtent',
		'surfaceExtent',
		'window',
		'mutex'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #accessing }
RustWindowingWorldRenderer class >> activeCycleLapse [
	"Milliseconds"

	^ 16
]

{ #category : #accessing }
RustWindowingWorldRenderer class >> idleCycleLapse [
	"Milliseconds"

	^ 1000
]

{ #category : #accessing }
RustWindowingWorldRenderer >> activateCursor: aCursor withMask: maskForm [

	window ifNotNil: [ cursorMap
		at: aCursor
		ifPresent: [ :aGlutinCursor | window cursor: aGlutinCursor ]
		ifAbsent: [ window cursor: WinitCursorIcon Default ] ]
]

{ #category : #accessing }
RustWindowingWorldRenderer >> actualScreenSize [
	"Return the logical screen size"
	<return: #Point>

	^ worldExtent
]

{ #category : #accessing }
RustWindowingWorldRenderer >> canvas [
	^ self subclassResponsibility
]

{ #category : #accessing }
RustWindowingWorldRenderer >> canvas: aCanvas [
	"nothing we can do here"
]

{ #category : #'api - cycle' }
RustWindowingWorldRenderer >> checkForNewScreenSize [
	"Is called on every frame"
	<return: #Boolean>
	| aLogicalExtent aPhysicalExtent |

	aLogicalExtent := self windowLogicalSize asPoint.
	aPhysicalExtent := self windowPhysicalSize asPoint.

	(worldExtent = aLogicalExtent and: [ surfaceExtent = aPhysicalExtent ])
		ifTrue: [ ^ false ].

	surfaceExtent := aPhysicalExtent.

	"fast return if only physical extent changed"
	worldExtent = aLogicalExtent
		ifTrue: [ ^ true ].

	worldExtent := aLogicalExtent.
	
	world worldState realWindowExtent: aLogicalExtent.
	world restoreMorphicDisplay.
	
	world extent: aLogicalExtent.
	world worldState doFullRepaint.
	
	^ true
]

{ #category : #accessing }
RustWindowingWorldRenderer >> clipboardText [
	^ Clipboard clipboardText
]

{ #category : #accessing }
RustWindowingWorldRenderer >> clipboardText: aString [
	Clipboard clipboardText: aString
]

{ #category : #initialization }
RustWindowingWorldRenderer >> convertWindowMouseEventPosition: aPosition [

	^ (aPosition / self scaleFactor) rounded
]

{ #category : #activation }
RustWindowingWorldRenderer >> deactivate [
	world worldState worldRenderer: (NullWorldRenderer forWorld: world).
	
	window ifNotNil: [
		window close.
		window := nil ].

	RustWindowingEventFetcher default removeEventHandler: eventHandler.
	eventHandler := nil.
	
	WorldState MinCycleLapse: self class idleCycleLapse
]

{ #category : #'api - cycle' }
RustWindowingWorldRenderer >> deferUpdates: aBoolean [
	"Defered updates are not supported"

	^ false
]

{ #category : #'api - cycle' }
RustWindowingWorldRenderer >> displayWorldState: aWorldState ofWorld: aWorld submorphs: submorphs [

	"Obsolete starting with Pharo9"
	self shouldNotImplement
]

{ #category : #activation }
RustWindowingWorldRenderer >> doActivate [
	self initializeCursorMap.
	self initializeGlutinWindow.

	world worldState realWindowExtent: worldExtent.
	world extent: worldExtent.
	world worldState doFullRepaint.
	
	WorldState MinCycleLapse: self class activeCycleLapse
]

{ #category : #operations }
RustWindowingWorldRenderer >> fullscreenMode: aValue [

	"osWindow fullscreen: aValue.
	self checkForNewScreenSize."
]

{ #category : #accessing }
RustWindowingWorldRenderer >> icon: aForm [ 

	"osWindow icon: aForm"
]

{ #category : #initialization }
RustWindowingWorldRenderer >> initialize [
	super initialize.
	mutex := Monitor new
]

{ #category : #initialization }
RustWindowingWorldRenderer >> initializeCursorMap [
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
RustWindowingWorldRenderer >> initializeGlutinWindow [
	mutex critical: [
		| aWindowBuilder eventLoop |

		eventLoop := RustWindowingEventFetcher default eventLoop.
		aWindowBuilder := eventLoop windowBuilder
			title: Smalltalk image imageFile basename;
			extent: windowLogicalSize asPoint.	

		window := eventLoop createWindow: aWindowBuilder.

		scaleFactor := window scaleFactor.
		windowPhysicalSize := (FensterPhysicalSize fromPoint: window innerExtent) rounded.
		surfaceExtent := windowPhysicalSize asPoint.
		windowLogicalSize := (windowPhysicalSize asLogical: scaleFactor) rounded.
		worldExtent := windowLogicalSize asPoint.

		eventHandler := (WinitMorphicEventHandler for: world) window: window.
		RustWindowingEventFetcher default addEventHandler: eventHandler ]
]

{ #category : #accessing }
RustWindowingWorldRenderer >> scaleFactor [
	^ scaleFactor ifNil: [
		window
			ifNil: [ 1 ]
			ifNotNil: [ window scaleFactor ] ]
]

{ #category : #accessing }
RustWindowingWorldRenderer >> scaleFactor: aNumber [
	scaleFactor := aNumber
]

{ #category : #events }
RustWindowingWorldRenderer >> updateToNewResolution [

	"OSWindow specific"
	self shouldNotImplement 
]

{ #category : #accessing }
RustWindowingWorldRenderer >> windowLogicalSize [
	"Return the logical size of the window. The value can be changed anytime during the world cycle.
	It is advised to only use it during #checkForNewScreenSize"
	<return: #FensterLogicalSize>

	^ windowLogicalSize
]

{ #category : #accessing }
RustWindowingWorldRenderer >> windowLogicalSize: aFensterLogicalSize [
	| roundedSize |
	
	roundedSize := aFensterLogicalSize rounded.
	roundedSize isZero
		ifTrue: [ self error: 'Window size must be positive' ].
	
	windowLogicalSize := roundedSize
]

{ #category : #accessing }
RustWindowingWorldRenderer >> windowPhysicalSize [

	^ windowPhysicalSize
]

{ #category : #accessing }
RustWindowingWorldRenderer >> windowPhysicalSize: aFensterPhysicalSize [
	"Is called when the physical window size is changed"
	| roundedSize |
	
	roundedSize := aFensterPhysicalSize rounded.
	roundedSize isZero
		ifTrue: [ self error: 'Window size must be positive' ].
	
	windowPhysicalSize := roundedSize
]

{ #category : #accessing }
RustWindowingWorldRenderer >> world: aWorld [
	world := aWorld.
	
	"#realWindowExtent is the logical size of the window"
	windowLogicalSize := FensterLogicalSize
		fromPoint: ((world worldState realWindowExtent ifNil: [ 976 @ 665 ]) asIntegerPoint) rounded.

	worldExtent := windowLogicalSize asPoint.
	
	windowPhysicalSize := (windowLogicalSize asPhysical: 1.0) rounded.
	surfaceExtent := windowPhysicalSize asPoint
]
