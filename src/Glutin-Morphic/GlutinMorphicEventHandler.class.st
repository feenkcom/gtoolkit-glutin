Class {
	#name : #GlutinMorphicEventHandler,
	#superclass : #GlutinWindowEventsSensor,
	#traits : 'TGlutinEventVisitor',
	#classTraits : 'TGlutinEventVisitor classTrait',
	#instVars : [
		'morphicWorld',
		'window',
		'mousePosition',
		'lastModifiers',
		'buttons'
	],
	#classVars : [
		'SymbolCharacterMapping'
	],
	#pools : [
		'OSKeySymbols'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #'as yet unclassified' }
GlutinMorphicEventHandler class >> for: morphicWorld [
	^ self new morphicWorld: morphicWorld; yourself
]

{ #category : #'as yet unclassified' }
GlutinMorphicEventHandler class >> initialize [
	"
	self initialize
	"
	super initialize.
	SymbolCharacterMapping := Dictionary new.
	{
	 OSK_RETURN . Character cr.
	 OSK_BACKSPACE . Character backspace.
	 OSK_TAB . Character tab.
	 OSK_HOME . Character home.
	 OSK_LEFT . Character arrowLeft.
	 OSK_UP . Character arrowUp.
	 OSK_RIGHT . Character arrowRight.
	 OSK_DOWN . Character arrowDown.
	 OSK_END . Character end.
	 OSK_INSERT . Character insert.
	 OSK_PAGEUP . Character pageUp.
	 OSK_PAGEDOWN . Character pageDown.
	 OSK_DELETE. Character delete.
	
	 OSK_KP_0 . $0.
	 OSK_KP_1 . $1.
	 OSK_KP_2 . $2.
	 OSK_KP_3 . $3.
	 OSK_KP_4 . $4.
	 OSK_KP_5 . $5.
	 OSK_KP_6 . $6.
	 OSK_KP_7 . $7.
	 OSK_KP_8 . $8.
	 OSK_KP_9 . $9.
	 OSK_KP_DIVIDE . $/.
	 OSK_KP_MULTIPLY . $*.
	 OSK_KP_PLUS . $+.
	 OSK_KP_MINUS . $-.
	 OSK_KP_ENTER . Character cr.
	 OSK_KP_PERIOD . $..
	} pairsDo: [ :key :val | SymbolCharacterMapping at: key put: val charCode ]
]

{ #category : #private }
GlutinMorphicEventHandler >> activeHand [
	^ self morphicWorld activeHand
]

{ #category : #converting }
GlutinMorphicEventHandler >> convertButton: aGlutinButton [
	aGlutinButton button_type = GlutinEventMouseButtonType Left
		ifTrue: [ ^ MouseButtonEvent redButton ].

	aGlutinButton button_type = GlutinEventMouseButtonType Middle
		ifTrue: [ ^ MouseButtonEvent yellowButton ].

	aGlutinButton button_type = GlutinEventMouseButtonType Right
		ifTrue: [ ^ MouseButtonEvent blueButton ].

	^ 0
]

{ #category : #converting }
GlutinMorphicEventHandler >> convertModifiers: theGlutinModifiers [
	| buttons |

	buttons := 0.
	
	"Alt/Option key"
	theGlutinModifiers alt ifTrue: [
		"On windows and unix, treat alt key as command key"
		buttons := Smalltalk os isWin32 | Smalltalk os isUnix
			ifTrue: [ buttons | 2r01000000 ]
			ifFalse: [ buttons | 2r00100000 ] ].

	theGlutinModifiers ctrl ifTrue: [ buttons := buttons | 2r00010000 ]. "Control key"
	theGlutinModifiers shift ifTrue: [ buttons := buttons | 8 ]. "Shift key"
	theGlutinModifiers logo ifTrue: [ buttons := buttons | 2r01000000 ]. "Cmd key"

	^ buttons
]

{ #category : #events }
GlutinMorphicEventHandler >> dispatchMorphicEvent: anEvent [
	morphicWorld defer: [
		(morphicWorld activeHand isNotNil and: [ anEvent hand isNotNil ]) ifTrue: [
			morphicWorld activeHand handleEvent: anEvent
		]
	]
	
]

{ #category : #visiting }
GlutinMorphicEventHandler >> mapSymbolToKeyValue: symbol [
	^ SymbolCharacterMapping at: symbol ifAbsent: [
		 "Don't allow symbol values outside the unicode range"
		 symbol >= 16r400000 ifTrue: [ 0 ] ifFalse: [ symbol ] ]
]

{ #category : #accessing }
GlutinMorphicEventHandler >> morphicWorld [
	^ morphicWorld
]

{ #category : #accessing }
GlutinMorphicEventHandler >> morphicWorld: aMorphicWorld [
	morphicWorld := aMorphicWorld
]

{ #category : #'event - handling' }
GlutinMorphicEventHandler >> processGlutinEvent: aGlutinWindowEvent forWindow: aWindow [
	self window == aWindow
		ifFalse: [ ^ self ].
		
	aGlutinWindowEvent accept: self
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitCursorMovedEvent: anEvent [
	| aMorphicEvent aNewCursorPosition oldPos theButtons |

	aNewCursorPosition := anEvent x @ anEvent y.
	oldPos := mousePosition ifNil: [ 0@0 ].
	
	theButtons := (self convertModifiers: anEvent modifiers).
	buttons ifNotNil: [ theButtons := theButtons | buttons ].

	mousePosition := aNewCursorPosition.

	morphicWorld beCursorOwner.
	
	aMorphicEvent := MouseMoveEvent basicNew
		setType: #mouseMove 
		startPoint: oldPos
		endPoint: aNewCursorPosition
		trail: { oldPos. aNewCursorPosition }
		buttons: theButtons
		hand: self activeHand
		stamp: Time millisecondClockValue.
		
	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitKeyDownEvent: anEvent [
	| keyEvent keyEvent2 mods |

	mods := anEvent modifiers.
	keyEvent := KeyboardEvent new
		setType: #keyDown
		buttons: (self convertModifiers: mods)
		position: anEvent position
		keyValue: (self mapSymbolToKeyValue: anEvent symbol)
		charCode: (self mapSymbolToKeyValue: anEvent symbol)
		hand:  self activeHand
		stamp: Time millisecondClockValue.
	keyEvent scanCode: anEvent scanCode.
	self enqueue: keyEvent.
	
	"This is for ctrl/alt held alone makes morphic think that null character is good text input"
	keyEvent keyValue = 0 ifTrue: [ ^ self ]. 
	
	
	"That's stupid and horrible, but that's the way we doing it for now"
	keyEvent keyValue = 27 "Esc" ifFalse: [
		anEvent character ifNil: [ 
			(mods alt or: [ mods ctrl or: [ mods cmd ] ]) ifFalse: [ 
				^ nil
			]]
	].
		
	"Workaround for SDL<->Morphic: produce keystroke events
	if any modifier key held down (for non-modified keys there are OSTextInputEvent)"
	
	keyEvent2 := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: anEvent modifiers)
		position: anEvent position
		keyValue: (self mapSymbolToKeyValue: anEvent symbol)
		charCode: (self mapSymbolToKeyValue: anEvent symbol)
		hand:  morphicWorld activeHand
		stamp: Time millisecondClockValue.
	keyEvent2 scanCode: anEvent scanCode.

	^ keyEvent2
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitKeyUpEvent: anEvent [
	| keyEvent |
	keyEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: anEvent modifiers)
		position: anEvent position
		keyValue: (self mapSymbolToKeyValue: anEvent symbol)
		charCode: (self mapSymbolToKeyValue: anEvent symbol)
		hand:  self activeHand
		stamp: Time millisecondClockValue.
	keyEvent scanCode: anEvent scanCode.
	^ keyEvent
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitMouseInputEvent: anEvent [
	| aState aMorphicEvent anEventType |
	
	"cursor position is unknown, we can not properly handle mouse input event, therefore ignore it"
	mousePosition
		ifNil: [ ^ self ].

	aState := anEvent state.
	
	aState = GlutinEventInputElementState Unknown
		ifTrue: [ ^ self ].

	anEventType := aState = GlutinEventInputElementState Pressed
		ifTrue: [ #mouseDown ]
		ifFalse: [ #mouseUp ].
		
	 buttons := aState = GlutinEventInputElementState Pressed
		ifTrue: [ self convertButton: anEvent button ]
		ifFalse: [ 0 ].

	aMorphicEvent := MouseButtonEvent new
		setType: anEventType
		position: mousePosition
		which: buttons
		buttons: (self convertModifiers: anEvent modifiers) | buttons
		hand: self activeHand
		stamp: Time millisecondClockValue.

	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitMouseWheelEvent: anEvent [
	| aMorphicEvent aDelta aScrollDistance  aDirection |

	mousePosition
		ifNil: [ ^ self ].
	
	aDelta := anEvent delta.
	
	aScrollDistance := aDelta type = GlutinEventMouseScrollDeltaType PixelDelta
		ifTrue: [ aDelta x negated @ aDelta y ]
		ifFalse: [ aDelta type = GlutinEventMouseScrollDeltaType LineDelta
			ifTrue: [ (aDelta x negated @ aDelta y) * (GlutinLibrary mouseWheelScrollSpeed) ]
			ifFalse: [ 0@0 ] ].

	aScrollDistance isZero
		ifTrue: [ ^ self ].
		
	aDirection := aDelta x abs >= aDelta y abs
		ifTrue: [ aDelta x > 0
			ifTrue: [ Character arrowLeft ]
			ifFalse: [ Character arrowRight ] ]
		ifFalse: [ aDelta y > 0
			ifTrue: [ Character arrowUp ]
			ifFalse: [ Character arrowDown ] ].

	aMorphicEvent := MouseWheelEvent new 
		setType: #mouseWheel
		position: mousePosition
		direction: aDirection
		buttons: (self convertModifiers: anEvent modifiers)
		hand: self activeHand
		stamp: Time millisecondClockValue.
		
	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitTextInputEvent: anEvent [
	| keyEvent char mods |
	anEvent text ifNil: [ ^ nil ].
	char := anEvent text first.
	char ifNil: [ ^ nil ].
	mods := anEvent modifiers.
	"If a modifier key is pressed the keystroke event is handled by #visitMouseDownEvent:"
	(mods alt or: [ mods ctrl or: [ mods cmd ] ])
		ifTrue: [ ^ nil ].
		
	keyEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: anEvent modifiers)
		position: anEvent position
		keyValue: char charCode
		charCode: char charCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	
	^ keyEvent
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitUnknownEvent: anEvent [
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitWindowCloseRequest: anEvent [
	self currentWorld defer: [ WorldState quitSession ]
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitWindowResizedEvent: anEvent [
	window resize: anEvent width @ anEvent height.
	
	"window resized"
	morphicWorld worldState worldRenderer checkForNewScreenSize
]

{ #category : #accessing }
GlutinMorphicEventHandler >> window [
	^ window
]

{ #category : #accessing }
GlutinMorphicEventHandler >> window: anObject [
	window := anObject
]
