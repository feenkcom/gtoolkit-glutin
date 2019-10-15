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
		'KeyCharacterMapping'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #'instance creation' }
GlutinMorphicEventHandler class >> for: morphicWorld [
	^ self new morphicWorld: morphicWorld; yourself
]

{ #category : #'class initialization' }
GlutinMorphicEventHandler class >> initialize [
	"
	self initialize
	"
	KeyCharacterMapping := Dictionary new.
	
	(($a to: $z) flatCollect: [ :c | { GlutinEventVirtualKeyCode perform: c asString asUppercase asSymbol . c } ]),
	{
	GlutinEventVirtualKeyCode Back . Character backspace.
	GlutinEventVirtualKeyCode Escape . Character escape.
	GlutinEventVirtualKeyCode Tab . Character tab.
	GlutinEventVirtualKeyCode Home . Character home.
	GlutinEventVirtualKeyCode Left . Character arrowLeft.
	GlutinEventVirtualKeyCode Up . Character arrowUp.
	GlutinEventVirtualKeyCode Right . Character arrowRight.
	GlutinEventVirtualKeyCode Down . Character arrowDown.
	GlutinEventVirtualKeyCode End . Character end.
	GlutinEventVirtualKeyCode PageUp . Character pageUp.
	GlutinEventVirtualKeyCode PageDown . Character pageDown.
	GlutinEventVirtualKeyCode Delete. Character delete.
	GlutinEventVirtualKeyCode Space. Character space.
	GlutinEventVirtualKeyCode Key0 . $0.
	GlutinEventVirtualKeyCode Key1 . $1.
	GlutinEventVirtualKeyCode Key2 . $2.
	GlutinEventVirtualKeyCode Key3 . $3.
	GlutinEventVirtualKeyCode Key4 . $4.
	GlutinEventVirtualKeyCode Key5 . $5.
	GlutinEventVirtualKeyCode Key6 . $6.
	GlutinEventVirtualKeyCode Key7 . $7.
	GlutinEventVirtualKeyCode Key8 . $8.
	GlutinEventVirtualKeyCode Key9 . $9.
	GlutinEventVirtualKeyCode Slash . $/.
	GlutinEventVirtualKeyCode Backslash . $\.
	GlutinEventVirtualKeyCode Minus . $-.
	GlutinEventVirtualKeyCode Return . Character cr.
	GlutinEventVirtualKeyCode Period . $..
	} pairsDo: [ :key :val | KeyCharacterMapping at: key put: val ]
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

{ #category : #converting }
GlutinMorphicEventHandler >> mapSymbolToKeyValue: symbol [
	^ KeyCharacterMapping at: symbol ifAbsent: [ Character null ]
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
GlutinMorphicEventHandler >> visitCharacterReceivedEvent: anEvent [
	| char keyEvent anInputString |

	anInputString := anEvent text.
	(anInputString allSatisfy: [ :aCharacter | Unicode isPrintable: aCharacter ])
		ifFalse: [ ^ self ].
	
	char := anInputString first.

	keyEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: (lastModifiers ifNil: [ GlutinEventModifiersState new ]))
		position: (mousePosition ifNil: [ 0@0 ])
		keyValue: char asciiValue
		charCode: char charCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	
	self dispatchMorphicEvent: keyEvent
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitCursorMovedEvent: anEvent [
	| aMorphicEvent aNewCursorPosition oldPos theButtons |

	aNewCursorPosition := anEvent x @ anEvent y.
	oldPos := mousePosition ifNil: [ 0@0 ].
	
	theButtons := (self convertModifiers: (lastModifiers := anEvent modifiers copy)).
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
	| aCharacter aKeyValue aCharCode aMorphicEvent |

	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.
	
	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.
	(aCharCode > 255) ifTrue: [ aKeyValue := 0 ].

	aMorphicEvent := KeyboardEvent new
		setType: #keyDown
		buttons: (self convertModifiers: (lastModifiers := anEvent modifiers copy))
		position: (mousePosition ifNil: [ 0@0 ])
		keyValue: aKeyValue
		charCode: aCharCode
		hand:  self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: anEvent scan_code.

	self dispatchMorphicEvent: aMorphicEvent.
	
	aCharacter = Character null
		ifTrue: [ ^ self ].	
	
	(Unicode isPrintable: aCharacter)
		ifTrue: [ ^ self ].
	
	aMorphicEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: (lastModifiers := anEvent modifiers copy))
		position: (mousePosition ifNil: [ 0@0 ])
		keyValue: aKeyValue
		charCode: aCharCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	
	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitKeyUpEvent: anEvent [
	| aMorphicEvent |

	aMorphicEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: (lastModifiers := anEvent modifiers copy))
		position: (mousePosition ifNil: [ 0@0 ])
		keyValue: (self mapSymbolToKeyValue: anEvent virtual_keycode) asciiValue
		charCode: (self mapSymbolToKeyValue: anEvent virtual_keycode) charCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: anEvent scan_code.

	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #visiting }
GlutinMorphicEventHandler >> visitKeyboardInputEvent: anEvent [
	| aState |

	anEvent has_virtual_keycode
		ifFalse: [ ^ self ].

	aState := anEvent state.

	aState = GlutinEventInputElementState Unknown
		ifTrue: [ ^ self ].
	
	aState = GlutinEventInputElementState Pressed
		ifTrue: [ self visitKeyDownEvent: anEvent ]
		ifFalse: [ self visitKeyUpEvent: anEvent ]
	
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
		buttons: (self convertModifiers: (lastModifiers := anEvent modifiers copy)) | buttons
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
		buttons: (self convertModifiers: (lastModifiers := anEvent modifiers copy))
		hand: self activeHand
		stamp: Time millisecondClockValue.
		
	self dispatchMorphicEvent: aMorphicEvent
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
