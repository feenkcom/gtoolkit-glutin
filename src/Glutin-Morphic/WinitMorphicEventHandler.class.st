Class {
	#name : #WinitMorphicEventHandler,
	#superclass : #GlutinWindowEventsSensor,
	#traits : 'TGlutinEventVisitor',
	#classTraits : 'TGlutinEventVisitor classTrait',
	#instVars : [
		'morphicWorld',
		'window',
		'buttons',
		'modifiers',
		'cursorPosition',
		'scaleFactor',
		'eventQueue',
		'isDefered',
		'exceptions'
	],
	#classVars : [
		'KeyCharacterMapping',
		'WindowsKeyValueMapping'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #'instance creation' }
WinitMorphicEventHandler class >> for: morphicWorld [
	^ self new morphicWorld: morphicWorld; yourself
]

{ #category : #'class initialization' }
WinitMorphicEventHandler class >> initialize [
	"
	self initialize
	"
	self initializeKeyCharacterMapping.
	self initializeWindowsKeyValueMapping
]

{ #category : #'class initialization' }
WinitMorphicEventHandler class >> initializeKeyCharacterMapping [
	<script: 'self initializeKeyCharacterMapping'>
	KeyCharacterMapping := Dictionary new.
	
	(($a to: $z) flatCollect: [ :c | { WinitEventVirtualKeyCode perform: c asString asUppercase asSymbol . c } ]),
	{
	WinitEventVirtualKeyCode Back . Character backspace.
	WinitEventVirtualKeyCode Escape . Character escape.
	WinitEventVirtualKeyCode Tab . Character tab.
	WinitEventVirtualKeyCode Home . Character home.
	WinitEventVirtualKeyCode Left . Character arrowLeft.
	WinitEventVirtualKeyCode Up . Character arrowUp.
	WinitEventVirtualKeyCode Right . Character arrowRight.
	WinitEventVirtualKeyCode Down . Character arrowDown.
	WinitEventVirtualKeyCode End . Character end.
	WinitEventVirtualKeyCode PageUp . Character pageUp.
	WinitEventVirtualKeyCode PageDown . Character pageDown.
	WinitEventVirtualKeyCode Delete. Character delete.
	WinitEventVirtualKeyCode Space. Character space.
	WinitEventVirtualKeyCode Key0 . $0.
	WinitEventVirtualKeyCode Key1 . $1.
	WinitEventVirtualKeyCode Key2 . $2.
	WinitEventVirtualKeyCode Key3 . $3.
	WinitEventVirtualKeyCode Key4 . $4.
	WinitEventVirtualKeyCode Key5 . $5.
	WinitEventVirtualKeyCode Key6 . $6.
	WinitEventVirtualKeyCode Key7 . $7.
	WinitEventVirtualKeyCode Key8 . $8.
	WinitEventVirtualKeyCode Key9 . $9.
	WinitEventVirtualKeyCode Slash . $/.
	WinitEventVirtualKeyCode Backslash . $\.
	WinitEventVirtualKeyCode Minus . $-.
	WinitEventVirtualKeyCode Return . Character cr.
	WinitEventVirtualKeyCode Period . $..
	} pairsDo: [ :key :val | KeyCharacterMapping at: key put: val ]
]

{ #category : #'class initialization' }
WinitMorphicEventHandler class >> initializeWindowsKeyValueMapping [
	<script: 'self initializeWindowsKeyValueMapping'>
	WindowsKeyValueMapping := Dictionary new.
	
	(($a to: $z) flatCollect: [ :c | { WinitEventVirtualKeyCode perform: c asString asUppercase asSymbol . { c asUppercase asInteger } } ]),
	{
	WinitEventVirtualKeyCode Escape . #(ESCAPE).
	WinitEventVirtualKeyCode Tab . #(TAB).
	WinitEventVirtualKeyCode Home . #(1).
	WinitEventVirtualKeyCode Left . #(KP_LEFT).
	WinitEventVirtualKeyCode Up . #(KP_UP).
	WinitEventVirtualKeyCode Right . #(KP_RIGHT).
	WinitEventVirtualKeyCode Down . #(KP_DOWN).
	WinitEventVirtualKeyCode End . #(4).
	WinitEventVirtualKeyCode PageUp . #(PAGE_UP).
	WinitEventVirtualKeyCode PageDown . #(PAGE_DOWN).
	WinitEventVirtualKeyCode Space. #(KP_SPACE).
	WinitEventVirtualKeyCode Key0 . #(ZERO '0').
	WinitEventVirtualKeyCode Key1 . #(ONE '1').
	WinitEventVirtualKeyCode Key2 . #(TWO '2').
	WinitEventVirtualKeyCode Key3 . #(THREE '3').
	WinitEventVirtualKeyCode Key4 . #(FOUR '4').
	WinitEventVirtualKeyCode Key5 . #(FIVE '5').
	WinitEventVirtualKeyCode Key6 . #(SIX '6').
	WinitEventVirtualKeyCode Key7 . #(SEVEN '7').
	WinitEventVirtualKeyCode Key8 . #(EIGHT '8').
	WinitEventVirtualKeyCode Key9 . #(NINE '9').
	WinitEventVirtualKeyCode Return . #(KP_ENTER).
	WinitEventVirtualKeyCode LShift . #(SHIFT_L).
	WinitEventVirtualKeyCode RShift . #(SHIFT_R).
	WinitEventVirtualKeyCode LControl . #(CONTROL_L).
	WinitEventVirtualKeyCode RControl . #(CONTROL_R).
	WinitEventVirtualKeyCode LAlt . #(ALT_L).
	WinitEventVirtualKeyCode RAlt . #(ALT_R).
	WinitEventVirtualKeyCode LWin . #(META_L).
	WinitEventVirtualKeyCode Capital . #(CAPS_LOCK).
	WinitEventVirtualKeyCode F1 . #(F1).
	WinitEventVirtualKeyCode F2 . #(F2).
	WinitEventVirtualKeyCode F3 . #(F3).
	WinitEventVirtualKeyCode F4 . #(F4).
	WinitEventVirtualKeyCode F5 . #(F5).
	WinitEventVirtualKeyCode F6 . #(F6).
	WinitEventVirtualKeyCode F7 . #(F7).
	WinitEventVirtualKeyCode F8 . #(F8).
	WinitEventVirtualKeyCode F9 . #(F9).
	WinitEventVirtualKeyCode F10 . #(F10).
	WinitEventVirtualKeyCode F11 . #(F11).
	WinitEventVirtualKeyCode F12 . #(F12).
	WinitEventVirtualKeyCode Numpad0 . #(KP_0).
	WinitEventVirtualKeyCode Numpad1 . #(KP_1).
	WinitEventVirtualKeyCode Numpad2 . #(KP_2).
	WinitEventVirtualKeyCode Numpad3 . #(KP_3).
	WinitEventVirtualKeyCode Numpad4 . #(KP_4).
	WinitEventVirtualKeyCode Numpad5 . #(KP_5).
	WinitEventVirtualKeyCode Numpad6 . #(KP_6).
	WinitEventVirtualKeyCode Numpad7 . #(KP_7).
	WinitEventVirtualKeyCode Numpad8 . #(KP_8).
	WinitEventVirtualKeyCode Numpad9 . #(KP_9).
	WinitEventVirtualKeyCode Minus . #(223).
	WinitEventVirtualKeyCode Comma . #(222).
	WinitEventVirtualKeyCode Semicolon . #(188).
	WinitEventVirtualKeyCode Equals . #(200).
	WinitEventVirtualKeyCode Grave . #(203).
	WinitEventVirtualKeyCode LBracket . #(243).
	WinitEventVirtualKeyCode RBracket . #(250).
	WinitEventVirtualKeyCode Period . #(240).
	WinitEventVirtualKeyCode Slash . #(192).
	WinitEventVirtualKeyCode Backslash . #(134).
	WinitEventVirtualKeyCode Apostrophe . #(251).
	WinitEventVirtualKeyCode Back . #(8).
	WinitEventVirtualKeyCode Delete. #(127).
	WinitEventVirtualKeyCode NumpadEquals . #(KP_EQUAL).
	WinitEventVirtualKeyCode Divide . #(KP_DIVIDE).
	WinitEventVirtualKeyCode Decimal . #(KP_DECIMAL).
	WinitEventVirtualKeyCode Add . #(KP_ADD).
	WinitEventVirtualKeyCode Multiply . #(KP_MULTIPLY).
	WinitEventVirtualKeyCode Subtract . #(KP_SUBTRACT).
	} pairsDo: [ :key :values |
		values do: [ :val |
			val isNumber
				ifTrue: [ WindowsKeyValueMapping at: key put: val ]
				ifFalse: [
					([ (KeyboardKey named: val) ] on: NotFound do: [ nil ])
						ifNotNil: [ :aNamedKey |
							(KeyboardKey windowsVirtualKeyTable
								keyAtValue: aNamedKey
								ifAbsent: [ nil ])
									ifNotNil: [ :aCode | WindowsKeyValueMapping at: key put: aCode ] ] ] ] ]
]

{ #category : #accessing }
WinitMorphicEventHandler class >> keyCharacterMapping [
	^ KeyCharacterMapping
]

{ #category : #accessing }
WinitMorphicEventHandler class >> windowsKeyValueMapping [
	^ WindowsKeyValueMapping
]

{ #category : #private }
WinitMorphicEventHandler >> activeHand [
	^ self morphicWorld activeHand
]

{ #category : #converting }
WinitMorphicEventHandler >> convertButton: aGlutinButton [
	"On mac ctrl+click is mapped to right click, see:
	https://github.com/feenkcom/gtoolkit/issues/890"
	(OSPlatform current isMacOS and: [
		aGlutinButton button_type = WinitEventMouseButtonType Left
			and: [ modifiers ctrl ] ])
		ifTrue: [ ^ MouseButtonEvent yellowButton ].

	aGlutinButton button_type = WinitEventMouseButtonType Left
		ifTrue: [ ^ MouseButtonEvent redButton ].

	aGlutinButton button_type = WinitEventMouseButtonType Middle
		ifTrue: [ ^ MouseButtonEvent blueButton ].

	aGlutinButton button_type = WinitEventMouseButtonType Right
		ifTrue: [ ^ MouseButtonEvent yellowButton ].

	^ 0
]

{ #category : #converting }
WinitMorphicEventHandler >> convertModifiers: theGlutinModifiers [
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

{ #category : #'event - dispatch' }
WinitMorphicEventHandler >> dispatchEvents [
	| theLastMouseMoveEvent theEvents |
	
	theLastMouseMoveEvent := nil.
	
	theEvents := Array streamContents: [ :aStream |
		self fetchedEventsDo: [ :anEvent |
			anEvent isMove
				ifTrue: [ theLastMouseMoveEvent := anEvent  ].
			aStream nextPut: anEvent ] ].
	
	theEvents do: [ :anEvent |
		anEvent isMove
			ifTrue: [ anEvent = theLastMouseMoveEvent
				ifTrue: [ self dispatchMorphicEvent: anEvent ] ]
			ifFalse: [ self dispatchMorphicEvent: anEvent ] ]
]

{ #category : #'event - dispatch' }
WinitMorphicEventHandler >> dispatchMorphicEvent: anEvent [

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

	(morphicWorld activeHand isNotNil and: [ anEvent hand isNotNil ])
		ifTrue: [ morphicWorld activeHand handleEvent: anEvent ]
]

{ #category : #'event - dispatch' }
WinitMorphicEventHandler >> enqueueMorphicEvent: anEvent [
	eventQueue nextPut: anEvent.
	
	isDefered
		ifTrue: [ ^ self ].

	isDefered := true.

	morphicWorld defer: [
		isDefered := false.
		self dispatchEvents ]
]

{ #category : #'event - dispatch' }
WinitMorphicEventHandler >> fetchedEventsDo: aBlock [
	"Flush event queue and evaluate a given block with every queued event as argument"
	| theEvents |

	theEvents := LinkedList new.
	eventQueue flush: [ :anEvent | theEvents add: anEvent ].
	theEvents do: aBlock
]

{ #category : #initialization }
WinitMorphicEventHandler >> initialize [
	super initialize.
	
	modifiers := GlutinDeviceEventModifiersChangedEvent new.
	scaleFactor := nil.
	cursorPosition := FensterPhysicalPosition new.
	eventQueue := WaitfreeQueue new.
	isDefered := false.
	exceptions := Dictionary new.
	"exceptions at: GlutinEventVirtualKeyCode Up put: #UP.
	exceptions at: GlutinEventVirtualKeyCode Down put: #DOWN."
]

{ #category : #accessing }
WinitMorphicEventHandler >> logicalCursorPosition [
	<return: #Point>

	^ (cursorPosition asLogical: self scaleFactor) rounded asPoint
]

{ #category : #'events - mac' }
WinitMorphicEventHandler >> mapGlutinToPharoCodeFor: aGlutinSymbol withDefault: aGlutinCode [

	| result |
	"Try to map a glutin symbol like #Up to a Morphic symbol like #UP"
	result := OSKeySymbols mapKeySymbolNameToValue:
		          aGlutinSymbol item asUppercase.

	"If asUppercase translation does not work, 
	we have manual translation dictionary where we stored exceptions"

	result == 0 ifTrue: [ 
		result := OSKeySymbols mapKeySymbolNameToValue:
			          (exceptions at: aGlutinSymbol ifAbsent: '') ].
			          
	"last resort is to just return what we had in the first place"
	result == 0 ifTrue: [ ^ aGlutinCode ].

	^ result
]

{ #category : #converting }
WinitMorphicEventHandler >> mapSymbolToKeyValue: symbol [
	^ KeyCharacterMapping at: symbol ifAbsent: [ Character null ]
]

{ #category : #accessing }
WinitMorphicEventHandler >> morphicWorld [
	^ morphicWorld
]

{ #category : #accessing }
WinitMorphicEventHandler >> morphicWorld: aMorphicWorld [
	morphicWorld := aMorphicWorld
]

{ #category : #'event - handling' }
WinitMorphicEventHandler >> processDeviceEvent: aGlutinDeviceEvent forWindow: aWindow [
	self window == aWindow
		ifFalse: [ ^ self ].

	aGlutinDeviceEvent accept: self
]

{ #category : #'event - handling' }
WinitMorphicEventHandler >> processWindowEvent: aGlutinWindowEvent forWindow: aWindow [
	self window == aWindow
		ifFalse: [ ^ self ].
		
	aGlutinWindowEvent accept: self
]

{ #category : #accessing }
WinitMorphicEventHandler >> scaleFactor [
	"Return a scaling dpi factor from logical to physical coordinates.
	On high dpi (retina) displays scaling factor is > 1"
	<return: #Number>

	^ scaleFactor ifNil: [ scaleFactor := window scaleFactor ]
]

{ #category : #accessing }
WinitMorphicEventHandler >> shouldGetStepsFrom: aWorld [
	^ true
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitCharacterReceivedEvent: anEvent [
	| char keyEvent anInputString |
	
	anInputString := anEvent text.	
	(modifiers ctrl or: [ modifiers logo or: [ (anInputString anySatisfy: [ :aCharacter | (Unicode isPrintable: aCharacter) not ]) ] ])
		ifTrue: [ ^ self ].
	
	char := anInputString first.

	keyEvent := KeyboardEvent new
		setType: #keystroke
		buttons: (self convertModifiers: modifiers)
		position: self logicalCursorPosition
		keyValue: char asciiValue
		charCode: char charCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	
	self enqueueMorphicEvent: keyEvent
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitCursorMovedEvent: anEvent [
	| aMorphicEvent oldPos theButtons |
	
	oldPos := cursorPosition.
	cursorPosition := FensterPhysicalPosition x: anEvent x y: anEvent y.
	
	theButtons := (self convertModifiers: modifiers).
	buttons ifNotNil: [ theButtons := theButtons | buttons ].

	morphicWorld beCursorOwner.
	
	aMorphicEvent := MouseMoveEvent basicNew
		setType: #mouseMove 
		startPoint: (oldPos asLogical: self scaleFactor) rounded asPoint
		endPoint: self logicalCursorPosition
		trail: { (oldPos asLogical: self scaleFactor) rounded asPoint. self logicalCursorPosition }
		buttons: theButtons
		hand: self activeHand
		stamp: Time millisecondClockValue.
		
	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitKeyDownEvent: anEvent [
	OSPlatform current isUnix
		ifTrue: [ self visitKeyDownEventUnix: anEvent ].
	OSPlatform current isWindows
		ifTrue: [ self visitKeyDownEventWindows: anEvent ].
	OSPlatform current isMacOS
		ifTrue: [ self visitKeyDownEventMac: anEvent ]
]

{ #category : #'events - mac' }
WinitMorphicEventHandler >> visitKeyDownEventMac: anEvent [

	| aCharacter aKeyValue aCharCode aMorphicEvent |
	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.

	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.
	aCharCode > 255 ifTrue: [ aKeyValue := 0 ].

	aMorphicEvent := KeyboardEvent new
		                 setType: #keyDown
		                 buttons: (self convertModifiers: modifiers)
		                 position: self logicalCursorPosition
		                 keyValue: aKeyValue
		                 charCode: aCharCode
		                 hand: self activeHand
		                 stamp: Time millisecondClockValue.
	aMorphicEvent
		scanCode: anEvent scan_code;
		key: (OSKeySymbols mapKeySymbolValueToKeyboardKey: (self
						  mapGlutinToPharoCodeFor: anEvent virtual_keycode
						  withDefault: aKeyValue)).
	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'events - unix' }
WinitMorphicEventHandler >> visitKeyDownEventUnix: anEvent [

	| aCharacter aKeyValue aCharCode aMorphicEvent |
	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.

	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.
	aCharCode > 255 ifTrue: [ aKeyValue := 0 ].

	aMorphicEvent := KeyboardEvent new
		                 setType: #keyDown
		                 buttons: (self convertModifiers: modifiers)
		                 position: self logicalCursorPosition
		                 keyValue: aKeyValue
		                 charCode: aCharCode
		                 hand: self activeHand
		                 stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aCharCode;
		key: (OSKeySymbols mapKeySymbolValueToKeyboardKey: (self
						  mapGlutinToPharoCodeFor: anEvent virtual_keycode
						  withDefault: aKeyValue)).

	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'events - windows' }
WinitMorphicEventHandler >> visitKeyDownEventWindows: anEvent [

	| aCharacter aKeyValue aMorphicEvent |
	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.

	"In case of windows the keyValue, charCode and scanCode are the same"
	aKeyValue := self windowsVirtualKeycodeToKeyValue:
		             anEvent virtual_keycode.

	aMorphicEvent := KeyboardEvent new
		                 setType: #keyDown
		                 buttons: (self convertModifiers: modifiers)
		                 position: self logicalCursorPosition
		                 keyValue: aKeyValue
		                 charCode: aKeyValue
		                 hand: self activeHand
		                 stamp: Time millisecondClockValue.
	aMorphicEvent
		scanCode: aKeyValue;
		key: (OSKeySymbols mapKeySymbolValueToKeyboardKey: (self
						  mapGlutinToPharoCodeFor: anEvent virtual_keycode
						  withDefault: aKeyValue)).
	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitKeyUpEvent: anEvent [	
	OSPlatform current isWindows
		ifTrue: [ self visitKeyUpEventWindows: anEvent ].
	OSPlatform current isUnix
		ifTrue: [ self visitKeyUpEventUnix: anEvent ].
	OSPlatform current isMacOS
		ifTrue: [ self visitKeyUpEventMac: anEvent ]
]

{ #category : #'events - mac' }
WinitMorphicEventHandler >> visitKeyUpEventMac: anEvent [
	| aMorphicEvent aCharacter aKeyValue aCharCode |

	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.
	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.

	aMorphicEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: modifiers)
		position: self logicalCursorPosition
		keyValue: aKeyValue
		charCode: aCharCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aCharCode.

	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'events - unix' }
WinitMorphicEventHandler >> visitKeyUpEventUnix: anEvent [
	| aMorphicEvent aCharacter aKeyValue aCharCode |

	aCharacter := self mapSymbolToKeyValue: anEvent virtual_keycode.
	aKeyValue := aCharacter asciiValue.
	aCharCode := aCharacter charCode.

	aMorphicEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: modifiers)
		position: self logicalCursorPosition
		keyValue: aKeyValue
		charCode: aCharCode
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aCharCode.

	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'events - windows' }
WinitMorphicEventHandler >> visitKeyUpEventWindows: anEvent [
	| aMorphicEvent aKeyValue |

	aKeyValue := self windowsVirtualKeycodeToKeyValue: anEvent virtual_keycode.

	aMorphicEvent := KeyboardEvent new
		setType: #keyUp
		buttons: (self convertModifiers: modifiers)
		position: self logicalCursorPosition
		keyValue: aKeyValue
		charCode: aKeyValue
		hand: self activeHand
		stamp: Time millisecondClockValue.
	aMorphicEvent scanCode: aKeyValue.

	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitKeyboardInputEvent: anEvent [
	| aState |

	anEvent has_virtual_keycode
		ifFalse: [ ^ self ].

	aState := anEvent state.

	aState = WinitEventInputElementState Unknown
		ifTrue: [ ^ self ].
	
	aState = WinitEventInputElementState Pressed
		ifTrue: [ self visitKeyDownEvent: anEvent ]
		ifFalse: [ self visitKeyUpEvent: anEvent ]
	
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitModifiersChanged: anEvent [
	modifiers := anEvent copy
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitMouseInputEvent: anEvent [
	| aState aMorphicEvent anEventType |

	aState := anEvent state.
	
	aState = WinitEventInputElementState Unknown
		ifTrue: [ ^ self ].

	anEventType := aState = WinitEventInputElementState Pressed
		ifTrue: [ #mouseDown ]
		ifFalse: [ #mouseUp ].

	 buttons := aState = WinitEventInputElementState Pressed
		ifTrue: [ self convertButton: anEvent button ]
		ifFalse: [ 0 ].

	aMorphicEvent := MouseButtonEvent new
		setType: anEventType
		position: self logicalCursorPosition
		"which is a button that was pressed or released"
		which: (self convertButton: anEvent button)
		"buttons represent currently pressed buttons"
		buttons: (self convertModifiers: modifiers) | buttons
		hand: self activeHand
		stamp: Time millisecondClockValue.

	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitMouseWheelEvent: anEvent [
	| aMorphicEvent aDelta aScrollDistance  aDirection |
	
	aDelta := anEvent delta.
	
	aScrollDistance := aDelta type = WinitEventMouseScrollDeltaType PixelDelta
		ifTrue: [ aDelta x negated @ aDelta y ]
		ifFalse: [ aDelta type = WinitEventMouseScrollDeltaType LineDelta
			ifTrue: [ (aDelta x @ aDelta y) * (GlutinLibrary mouseWheelScrollSpeed) ]
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
		position: self logicalCursorPosition
		direction: aDirection
		buttons: (self convertModifiers: modifiers)
		hand: self activeHand
		stamp: Time millisecondClockValue.
		
	self enqueueMorphicEvent: aMorphicEvent
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitUnknownEvent: anEvent [
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitWindowCloseRequest: anEvent [
	morphicWorld defer: [
		morphicWorld worldState worldRenderer deactivate ]
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitWindowFocusedEvent: anEvent [
	WorldState MinCycleLapse: (anEvent is_focused
		ifTrue: [ RustWindowingWorldRenderer activeCycleLapse ]
		ifFalse: [ RustWindowingWorldRenderer idleCycleLapse ])
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitWindowResizedEvent: anEvent [
	| aWorldRenderer aPhysicalSize |
	
	aWorldRenderer := morphicWorld worldState worldRenderer.
	aPhysicalSize := FensterPhysicalSize fromPoint: (anEvent width @ anEvent height).

	window resize: aPhysicalSize asPoint.

	aWorldRenderer
		windowLogicalSize: (aPhysicalSize asLogical: aWorldRenderer scaleFactor);
		windowPhysicalSize: aPhysicalSize
]

{ #category : #'event - visiting' }
WinitMorphicEventHandler >> visitWindowScaleFactorChangedEvent: anEvent [
	scaleFactor := anEvent scale_factor.
	window resize: anEvent width @ anEvent height.
	
	morphicWorld defer: [
		morphicWorld worldState worldRenderer scaleFactor: scaleFactor ]
]

{ #category : #accessing }
WinitMorphicEventHandler >> window [
	^ window
]

{ #category : #accessing }
WinitMorphicEventHandler >> window: anObject [
	window := anObject
]

{ #category : #'events - windows' }
WinitMorphicEventHandler >> windowsVirtualKeycodeToKeyValue: aGlutinEventVirtualKeyCode [
	<return: #Number>

	^ WindowsKeyValueMapping
		at: aGlutinEventVirtualKeyCode
		ifAbsent: [ 0 ]
]
