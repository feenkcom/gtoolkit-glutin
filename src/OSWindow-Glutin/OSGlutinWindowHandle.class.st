Class {
	#name : #OSGlutinWindowHandle,
	#superclass : #OSWindowHandle,
	#instVars : [
		'handle',
		'cursorPosition',
		'lastModifiers'
	],
	#category : #'OSWindow-Glutin'
}

{ #category : #'instance creation' }
OSGlutinWindowHandle class >> newWithHandle: aHandle [
	^ self basicNew initWithHandle: aHandle
]

{ #category : #accessing }
OSGlutinWindowHandle >> bounds: newBounds [
	self
		position: newBounds origin;
		extent: newBounds extent
]

{ #category : #accessing }
OSGlutinWindowHandle >> canvasExtent [
	^ self handle framebufferExtent
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> convertModifiers: theGlutinModifiers for: osWindowModifiers [
	osWindowModifiers
		leftShift: theGlutinModifiers shift; rightShift: theGlutinModifiers shift;
		leftCtrl: theGlutinModifiers ctrl; rightCtrl: theGlutinModifiers ctrl;
		leftAlt: theGlutinModifiers alt; rightAlt: theGlutinModifiers alt;
		leftCmd: theGlutinModifiers logo; rightCmd: theGlutinModifiers logo
]

{ #category : #deleting }
OSGlutinWindowHandle >> destroy [
	self handle destroy.
	handle := nil
]

{ #category : #accessing }
OSGlutinWindowHandle >> extent [
	^ self handle innerExtent
]

{ #category : #accessing }
OSGlutinWindowHandle >> extent: newExtent [
	self winitWindow innerExtent: newExtent
]

{ #category : #accessing }
OSGlutinWindowHandle >> handle [
	<return: #GlutinWindowedContext>

	^ handle
]

{ #category : #accessing }
OSGlutinWindowHandle >> id [
	<return: #Number>

	^ handle id
]

{ #category : #initialize }
OSGlutinWindowHandle >> initWithHandle: aHandle [
	"aHandle is GlutinWindowedContext"

	handle := aHandle
]

{ #category : #'text input' }
OSGlutinWindowHandle >> isTextInputActive [
	^ true
]

{ #category : #testing }
OSGlutinWindowHandle >> isValid [
	^ handle isNotNil and: [ handle isValid ]
]

{ #category : #factory }
OSGlutinWindowHandle >> newFormRenderer: form [
	^ renderer := OSGlutinFormRenderer new 
		form: form;
		window: self;
		yourself
]

{ #category : #accessing }
OSGlutinWindowHandle >> platformSpecificHandle [
	^ nil
]

{ #category : #accessing }
OSGlutinWindowHandle >> position [
	^ self handle position
]

{ #category : #accessing }
OSGlutinWindowHandle >> position: newPosition [
	self handle position: newPosition
]

{ #category : #accessing }
OSGlutinWindowHandle >> show [
	
]

{ #category : #'text input' }
OSGlutinWindowHandle >> startTextInput [
	
]

{ #category : #'text input' }
OSGlutinWindowHandle >> stopTextInput [
	
]

{ #category : #accessing }
OSGlutinWindowHandle >> title [
	^ self winitWindow title
]

{ #category : #accessing }
OSGlutinWindowHandle >> title: aTitle [
	self winitWindow title: aTitle
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitCharacterReceivedEvent: anEvent [
	| osEvent |
		
	osEvent := OSTextInputEvent for: osWindow.
	osEvent
		text: anEvent text;
		position: cursorPosition.
		
	lastModifiers ifNotNil: [ osEvent modifiers: lastModifiers ].

	^ osEvent deliver
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitCursorMovedEvent: aCursorMovedEvent [
	| aNewCursorPosition aDelta osEvent |
	
	aNewCursorPosition := aCursorMovedEvent x @ aCursorMovedEvent y.
	aDelta := cursorPosition
		ifNil: [ 0@0 ]
		ifNotNil: [ aNewCursorPosition - cursorPosition ].

	osEvent := OSMouseMoveEvent for: osWindow.
	osEvent
		position: aNewCursorPosition;
		delta: aDelta.

	cursorPosition := aNewCursorPosition.

	self convertModifiers: aCursorMovedEvent modifiers for: osEvent modifiers.
	lastModifiers := osEvent modifiers copy.

	^ osEvent deliver
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitEventsCleared: anEventsClearedEvent [
	^ (OSEventsCleared for: osWindow) deliver
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitKeyboardInputEvent: anEvent [
	| osEvent aState |

	anEvent has_virtual_keycode
		ifFalse: [ ^ self ].

	cursorPosition
		ifNil: [ ^ self ].

	aState := anEvent state.

	aState = GlutinEventInputElementState Unknown
		ifTrue: [ ^ self ].
	
	osEvent := aState = GlutinEventInputElementState Pressed
		ifTrue: [ OSKeyDownEvent for: osWindow ]
		ifFalse: [ OSKeyUpEvent for: osWindow ].

	osEvent scanCode: anEvent scan_code.
	osEvent symbol: anEvent virtual_keycode.
	osEvent position: cursorPosition.

	self convertModifiers: anEvent modifiers for: osEvent modifiers.
	lastModifiers := osEvent modifiers copy.
	
	^ osEvent deliver
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitMouseInputEvent: aMouseInputEvent [
	| aButton aState osEvent |
	
	"cursor position is unknown, we can not properly handle mouse input event, therefore ignore it"
	cursorPosition
		ifNil: [ ^ self ].
	
	aButton := aMouseInputEvent button.
	aState := aMouseInputEvent state.
	
	aState = GlutinEventInputElementState Unknown
		ifTrue: [ ^ self ].
		
	osEvent := aState = GlutinEventInputElementState Pressed
		ifTrue: [ OSMouseButtonPressEvent for: osWindow ]
		ifFalse: [ OSMouseButtonReleaseEvent for: osWindow ].
	
	osEvent button: (aButton button_type = GlutinEventMouseButtonType Left
		ifTrue: [ 1 ]
		ifFalse: [ aButton button_type = GlutinEventMouseButtonType Middle
			ifTrue: [ 2 ]
			ifFalse: [ aButton button_type = GlutinEventMouseButtonType Right
				ifTrue: [ 3 ]
				ifFalse: [ aButton button_code ] ] ]).
	
	osEvent position: cursorPosition.
		
	self convertModifiers: aMouseInputEvent modifiers for: osEvent modifiers.
	lastModifiers := osEvent modifiers copy.

	^ osEvent deliver.
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitMouseWheelEvent: aMouseWheelEvent [
	| osEvent aDelta aScrollDistance |

	cursorPosition
		ifNil: [ ^ self ].
		
	aDelta := aMouseWheelEvent delta.
	
	aScrollDistance := aDelta type = WinitEventMouseScrollDeltaType PixelDelta
		ifTrue: [ aDelta x negated @ aDelta y ]
		ifFalse: [ aDelta type = WinitEventMouseScrollDeltaType LineDelta
			ifTrue: [ (aDelta x negated @ aDelta y) * (GlutinLibrary mouseWheelScrollSpeed) ]
			ifFalse: [ 0@0 ] ].

	osEvent := OSMouseWheelEvent for: osWindow.
	osEvent
		position: cursorPosition;
		scrollHorizontal: aScrollDistance x;
		scrollVertical: aScrollDistance y.
			
	self convertModifiers: aMouseWheelEvent modifiers for: osEvent modifiers.
	lastModifiers := osEvent modifiers copy.

	^ osEvent deliver
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitTouchEvent: aTouchEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitUnknownEvent: anUnknownEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowCloseRequest: aWindowCloseRequest [
	^ (OSWindowCloseEvent for: osWindow) deliver
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowDestroyed: aWindowDestroyedEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowFocusedEvent: aWindowFocusedEvent [

	^ (aWindowFocusedEvent is_focused
		ifTrue: [ OSWindowFocusInEvent for: osWindow ]
		ifFalse: [ OSWindowFocusOutEvent for: osWindow ]) deliver
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowMovedEvent: aWindowMovedEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowRedrawRequested: aWindowRefreshEvent [
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowResizedEvent: aWindowResizedEvent [
	self handle resize: (aWindowResizedEvent width @ aWindowResizedEvent height).

	^ (OSWindowResizeEvent for: osWindow)
		width: aWindowResizedEvent width;
		height: aWindowResizedEvent height;
		deliver
]

{ #category : #accessing }
OSGlutinWindowHandle >> winitWindow [
	<return: #GlutinWindowedContext>

	^ self handle
]
