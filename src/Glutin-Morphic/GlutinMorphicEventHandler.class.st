Class {
	#name : #GlutinMorphicEventHandler,
	#superclass : #GlutinWindowEventsSensor,
	#traits : 'TGlutinEventVisitor',
	#classTraits : 'TGlutinEventVisitor classTrait',
	#instVars : [
		'morphicWorld',
		'window',
		'buttons',
		'modifiers',
		'cursorPosition',
		'scaleFactor'
	],
	#classVars : [
		'KeyCharacterMapping',
		'WindowsKeyValueMapping'
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
	self initializeKeyCharacterMapping.
	self initializeWindowsKeyValueMapping
]

{ #category : #'class initialization' }
GlutinMorphicEventHandler class >> initializeKeyCharacterMapping [
	<script: 'self initializeKeyCharacterMapping'>
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

{ #category : #'class initialization' }
GlutinMorphicEventHandler class >> initializeWindowsKeyValueMapping [
	<script: 'self initializeWindowsKeyValueMapping'>
	WindowsKeyValueMapping := Dictionary new.
	
	(($a to: $z) flatCollect: [ :c | { GlutinEventVirtualKeyCode perform: c asString asUppercase asSymbol . c asUppercase asInteger } ]),
	{
	GlutinEventVirtualKeyCode Escape . #ESCAPE.
	GlutinEventVirtualKeyCode Tab . #TAB.
	GlutinEventVirtualKeyCode Home . #HOME.
	GlutinEventVirtualKeyCode Left . #KP_LEFT.
	GlutinEventVirtualKeyCode Up . #KP_UP.
	GlutinEventVirtualKeyCode Right . #KP_RIGHT.
	GlutinEventVirtualKeyCode Down . #KP_DOWN.
	GlutinEventVirtualKeyCode End . #END.
	GlutinEventVirtualKeyCode PageUp . #PAGE_UP.
	GlutinEventVirtualKeyCode PageDown . #PAGE_DOWN.
	GlutinEventVirtualKeyCode Space. #KP_SPACE.
	GlutinEventVirtualKeyCode Key0 . #ZERO.
	GlutinEventVirtualKeyCode Key1 . #ONE.
	GlutinEventVirtualKeyCode Key2 . #TWO.
	GlutinEventVirtualKeyCode Key3 . #THREE.
	GlutinEventVirtualKeyCode Key4 . #FOUR.
	GlutinEventVirtualKeyCode Key5 . #FIVE.
	GlutinEventVirtualKeyCode Key6 . #SIX.
	GlutinEventVirtualKeyCode Key7 . #SEVEN.
	GlutinEventVirtualKeyCode Key8 . #EIGHT.
	GlutinEventVirtualKeyCode Key9 . #NINE.
	GlutinEventVirtualKeyCode Return . #KP_ENTER.
	GlutinEventVirtualKeyCode LShift . #SHIFT_L.
	GlutinEventVirtualKeyCode RShift . #SHIFT_R.
	GlutinEventVirtualKeyCode LControl . #CONTROL_L.
	GlutinEventVirtualKeyCode RControl . #CONTROL_R.
	GlutinEventVirtualKeyCode LAlt . #ALT_L.
	GlutinEventVirtualKeyCode RAlt . #ALT_R.
	GlutinEventVirtualKeyCode LWin . #META_L.
	GlutinEventVirtualKeyCode Capital . #CAPS_LOCK.
	GlutinEventVirtualKeyCode F1 . #F1.
	GlutinEventVirtualKeyCode F2 . #F2.
	GlutinEventVirtualKeyCode F3 . #F3.
	GlutinEventVirtualKeyCode F4 . #F4.
	GlutinEventVirtualKeyCode F5 . #F5.
	GlutinEventVirtualKeyCode F6 . #F6.
	GlutinEventVirtualKeyCode F7 . #F7.
	GlutinEventVirtualKeyCode F8 . #F8.
	GlutinEventVirtualKeyCode F9 . #F9.
	GlutinEventVirtualKeyCode F10 . #F10.
	GlutinEventVirtualKeyCode F11 . #F11.
	GlutinEventVirtualKeyCode F12 . #F12.
	GlutinEventVirtualKeyCode Numpad0 . #KP_0.
	GlutinEventVirtualKeyCode Numpad1 . #KP_1.
	GlutinEventVirtualKeyCode Numpad2 . #KP_2.
	GlutinEventVirtualKeyCode Numpad3 . #KP_3.
	GlutinEventVirtualKeyCode Numpad4 . #KP_4.
	GlutinEventVirtualKeyCode Numpad5 . #KP_5.
	GlutinEventVirtualKeyCode Numpad6 . #KP_6.
	GlutinEventVirtualKeyCode Numpad7 . #KP_7.
	GlutinEventVirtualKeyCode Numpad8 . #KP_8.
	GlutinEventVirtualKeyCode Numpad9 . #KP_9.
	GlutinEventVirtualKeyCode Minus . 223.
	GlutinEventVirtualKeyCode Comma . 222.
	GlutinEventVirtualKeyCode Semicolon . 188.
	GlutinEventVirtualKeyCode Equals . 200.
	GlutinEventVirtualKeyCode Grave . 203.
	GlutinEventVirtualKeyCode LBracket . 243.
	GlutinEventVirtualKeyCode RBracket . 250.
	GlutinEventVirtualKeyCode Period . 240.
	GlutinEventVirtualKeyCode Slash . 192.
	GlutinEventVirtualKeyCode Backslash . 134.
	GlutinEventVirtualKeyCode Apostrophe . 251.
	GlutinEventVirtualKeyCode Back . 8.
	GlutinEventVirtualKeyCode Delete. 127.
	GlutinEventVirtualKeyCode NumpadEquals . #KP_EQUAL.
	GlutinEventVirtualKeyCode Divide . #KP_DIVIDE.
	GlutinEventVirtualKeyCode Decimal . #KP_DECIMAL.
	GlutinEventVirtualKeyCode Add . #KP_ADD.
	GlutinEventVirtualKeyCode Multiply . #KP_MULTIPLY.
	GlutinEventVirtualKeyCode Subtract . #KP_SUBTRACT.
	} pairsDo: [ :key :val |
		val isNumber
			ifTrue: [ WindowsKeyValueMapping at: key put: val ]
			ifFalse: [ WindowsKeyValueMapping at: key put: (KeyboardKey windowsVirtualKeyTable keyAtValue: (KeyboardKey named: val)) ] ]
]

{ #category : #accessing }
GlutinMorphicEventHandler class >> windowsKeyValueMapping [
	^ WindowsKeyValueMapping
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
		ifTrue: [ ^ MouseButtonEvent blueButton ].

	aGlutinButton button_type = GlutinEventMouseButtonType Right
		ifTrue: [ ^ MouseButtonEvent yellowButton ].

	^ 0
]

{ #category : #converting }
GlutinMorphicEventHandler >> convertModifiers: theGlutinModifiers [
	| theButtons |

	theButtons := 0.
	
	"Alt/Option key"
	theGlutinModifiers alt ifTrue: [
		"On windows and unix, treat alt key as command key"
		theButtons := Smalltalk os isWin32 | Smalltalk os isUnix
			ifTrue: [ theButtons | 2r01000000 ]
			ifFalse: [ theButtons | 2r00100000 ] ].

	theGlutinModifiers ctrl ifTrue: [ theButtons := theButtons | 2r00010000 ]. "Control key"
	theGlutinModifiers shift ifTrue: [ theButtons := theButtons | 8 ]. "Shift key"
	theGlutinModifiers logo ifTrue: [ theButtons := theButtons | 2r01000000 ]. "Cmd key"

	^ theButtons
]

{ #category : #events }
GlutinMorphicEventHandler >> dispatchMorphicEvent: anEvent [

	"anEvent isKeyboard ifTrue:[
		Stdio stdout
			nextPutAll: '[glutin] type: ';
			nextPutAll: anEvent type asString;
			nextPutAll: ' buttons: ';
			nextPutAll: anEvent buttons asString;
			nextPutAll: ' keyValue: ';
			nextPutAll: anEvent keyValue asString;
			nextPutAll: ' charCode: ';
			nextPutAll: (anEvent instVarNamed: #charCode) asString;
			nextPutAll: ' scanCode: ';
			nextPutAll: anEvent scanCode asString;
			lf ]."

	morphicWorld defer: [
		(morphicWorld activeHand isNotNil and: [ anEvent hand isNotNil ]) ifTrue: [
			morphicWorld activeHand handleEvent: anEvent
		]
	]
]

{ #category : #initialization }
GlutinMorphicEventHandler >> initialize [
	super initialize.
	
	modifiers := GlutinDeviceEventModifiersChangedEvent new.
	scaleFactor := nil.
	cursorPosition := GtFensterPhysicalPosition new
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
GlutinMorphicEventHandler >> processDeviceEvent: aGlutinDeviceEvent forWindow: aWindow [
	self window == aWindow
		ifFalse: [ ^ self ].

	aGlutinDeviceEvent accept: self
]

{ #category : #'event - handling' }
GlutinMorphicEventHandler >> processWindowEvent: aGlutinWindowEvent forWindow: aWindow [
	self window == aWindow
		ifFalse: [ ^ self ].
		
	aGlutinWindowEvent accept: self
]

{ #category : #accessing }
GlutinMorphicEventHandler >> scaleFactor [
	"Return a scaling dpi factor from logical to physical coordinates.
	On high dpi (retina) displays scaling factor is > 1"
	<return: #Number>

	^ scaleFactor ifNil: [ scaleFactor := window scaleFactor ]
]

{ #category : #accessing }
GlutinMorphicEventHandler >> shouldGetStepsFrom: aWorld [
	^ true
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitCharacterReceivedEvent: anEvent [
	| char keyEvent anInputString |

	anInputString := anEvent text.	
	(modifiers ctrl not and: [ (anInputString allSatisfy: [ :aCharacter | Unicode isPrintable: aCharacter ]) ])
		ifFalse: [ ^ self ].
	
	char := anInputString first.

	keyEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: char asciiValue
		charCode: char charCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	
	self dispatchMorphicEvent: keyEvent
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitCursorMovedEvent: anEvent [
	| aMorphicEvent oldPos theButtons |
	
	oldPos := cursorPosition.
	cursorPosition := OSPlatform current isMacOS
		"see https://github.com/rust-windowing/winit/issues/1371"
		ifTrue: [ (GtFensterLogicalPosition x: anEvent x y: anEvent y) asPhysical: self scaleFactor ]
		ifFalse: [ GtFensterPhysicalPosition x: anEvent x y: anEvent y ].
	
	theButtons := (self convertModifiers: modifiers).
	buttons ifNotNil: [ theButtons := theButtons | buttons ].

	morphicWorld beCursorOwner.
	
	aMorphicEvent := MouseMoveEvent basicNew
		setType: #mouseMove 
		startPoint: (oldPos asLogical: self scaleFactor) asPoint
		endPoint: (cursorPosition asLogical: self scaleFactor) asPoint
		trail: { (oldPos asLogical: self scaleFactor) asPoint. (cursorPosition asLogical: self scaleFactor) asPoint }
		buttons: theButtons
		hand: self activeHand
		stamp: Time millisecondClockValue.
		
	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitKeyDownEvent: anEvent [
	OSPlatform current isUnix
		ifTrue: [ self visitKeyDownEventUnix: anEvent ].
	OSPlatform current isWindows
		ifTrue: [ self visitKeyDownEventWindows: anEvent ].
	OSPlatform current isMacOS
		ifTrue: [ self visitKeyDownEventMac: anEvent ]
]

{ #category : #'events - mac' }
GlutinMorphicEventHandler >> visitKeyDownEventMac: anEvent [
	| aCharacter aKeyValue aCharCode aMorphicEvent |

	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.
	
	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.
	(aCharCode > 255) ifTrue: [ aKeyValue := 0 ].

	aMorphicEvent := KeyboardEvent new
		setType: #keyDown
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aCharCode
		hand:  self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: anEvent scan_code.
	self dispatchMorphicEvent: aMorphicEvent.
	
	aCharacter = Character null
		ifTrue: [ ^ self ].	
	
	"if a character is printable and ctrl is not pressed we let visitCharacterReceivedEvent: to handle the event"
	((Unicode isPrintable: aCharacter) and: [ modifiers ctrl not ])
		ifTrue: [ ^ self ].
	
	aMorphicEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aCharCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	
	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'events - unix' }
GlutinMorphicEventHandler >> visitKeyDownEventUnix: anEvent [
	| aCharacter aKeyValue aCharCode aMorphicEvent |

	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.
	
	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.
	(aCharCode > 255) ifTrue: [ aKeyValue := 0 ].

	aMorphicEvent := KeyboardEvent new
		setType: #keyDown
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aCharCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aCharCode.

	self dispatchMorphicEvent: aMorphicEvent.
	
	aCharacter = Character null
		ifTrue: [ ^ self ].	
	
	"if a character is printable and ctrl is not pressed we let visitCharacterReceivedEvent: to handle the event"
	((Unicode isPrintable: aCharacter) and: [ modifiers ctrl not ])
		ifTrue: [ ^ self ].
	
	aMorphicEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aCharCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aKeyValue.
	
	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'events - windows' }
GlutinMorphicEventHandler >> visitKeyDownEventWindows: anEvent [
	| aCharacter aKeyValue aMorphicEvent |

	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.
	
	"In case of windows the keyValue, charCode and scanCode are the same"
	aKeyValue := self windowsVirtualKeycodeToKeyValue: anEvent virtual_keycode.

	aMorphicEvent := KeyboardEvent new
		setType: #keyDown
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aKeyValue
		hand:  self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aKeyValue.
	self dispatchMorphicEvent: aMorphicEvent.
	
	aCharacter = Character null
		ifTrue: [ ^ self ].	
	
	"if a character is printable and ctrl is not pressed we let visitCharacterReceivedEvent: to handle the event"
	((Unicode isPrintable: aCharacter) and: [ modifiers ctrl not ])
		ifTrue: [ ^ self ].

	aMorphicEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aKeyValue
		hand: self activeHand
		stamp: Time millisecondClockValue.
	
	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitKeyUpEvent: anEvent [	
	OSPlatform current isWindows
		ifTrue: [ self visitKeyUpEventWindows: anEvent ].
	OSPlatform current isUnix
		ifTrue: [ self visitKeyUpEventUnix: anEvent ].
	OSPlatform current isMacOS
		ifTrue: [ self visitKeyUpEventMac: anEvent ]
]

{ #category : #'events - mac' }
GlutinMorphicEventHandler >> visitKeyUpEventMac: anEvent [
	| aMorphicEvent aCharacter aKeyValue aCharCode |

	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.
	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.

	aMorphicEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aCharCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aCharCode.

	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'events - unix' }
GlutinMorphicEventHandler >> visitKeyUpEventUnix: anEvent [
	| aMorphicEvent aCharacter aKeyValue aCharCode |

	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.
	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.

	aMorphicEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aCharCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aCharCode.

	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'events - windows' }
GlutinMorphicEventHandler >> visitKeyUpEventWindows: anEvent [
	| aMorphicEvent aKeyValue |

	aKeyValue := self windowsVirtualKeycodeToKeyValue: anEvent virtual_keycode.

	aMorphicEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: modifiers)
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		keyValue: aKeyValue
		charCode: aKeyValue
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aKeyValue.

	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
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

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitModifiersChanged: anEvent [
	modifiers := anEvent copy
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitMouseInputEvent: anEvent [
	| aState aMorphicEvent anEventType |

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
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		which: buttons
		buttons: (self convertModifiers: modifiers) | buttons
		hand: self activeHand
		stamp: Time millisecondClockValue.

	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitMouseWheelEvent: anEvent [
	| aMorphicEvent aDelta aScrollDistance  aDirection |
	
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
		position: (cursorPosition asLogical: self scaleFactor) asPoint
		direction: aDirection
		buttons: (self convertModifiers: modifiers)
		hand: self activeHand
		stamp: Time millisecondClockValue.
		
	self dispatchMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitUnknownEvent: anEvent [
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitWindowCloseRequest: anEvent [
	morphicWorld defer: [
		morphicWorld worldState worldRenderer deactivate ]
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitWindowResizedEvent: anEvent [
	window resize: anEvent width @ anEvent height.
	
	"window resized"
	morphicWorld defer: [
		morphicWorld worldState worldRenderer checkForNewScreenSize ]
]

{ #category : #'event - visiting' }
GlutinMorphicEventHandler >> visitWindowScaleFactorChangedEvent: anEvent [
	scaleFactor := anEvent scale_factor.
	window resize: anEvent width @ anEvent height.
	
	morphicWorld defer: [
		morphicWorld worldState worldRenderer scaleFactor: scaleFactor ]
]

{ #category : #accessing }
GlutinMorphicEventHandler >> window [
	^ window
]

{ #category : #accessing }
GlutinMorphicEventHandler >> window: anObject [
	window := anObject
]

{ #category : #'events - windows' }
GlutinMorphicEventHandler >> windowsVirtualKeycodeToKeyValue: aGlutinEventVirtualKeyCode [
	<return: #Number>

	^ WindowsKeyValueMapping
		at: aGlutinEventVirtualKeyCode
		ifAbsent: [ 0 ]
]
