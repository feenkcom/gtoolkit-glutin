Class {
	#name : #OSGlutinWindowHandle,
	#superclass : #OSWindowHandle,
	#instVars : [
		'handle',
		'cursorPosition'
	],
	#category : #'OSWindow-Glutin'
}

{ #category : #'instance creation' }
OSGlutinWindowHandle class >> newWithHandle: aHandle [
	^ self basicNew initWithHandle: aHandle
]

{ #category : #accessing }
OSGlutinWindowHandle >> canvasExtent [
	^ self winitWindow framebufferExtent
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
	^ self winitWindow innerExtent
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

{ #category : #initialize }
OSGlutinWindowHandle >> initWithHandle: aHandle [
	"aHandle is GlutinWindowedContext"

	handle := aHandle
]

{ #category : #testing }
OSGlutinWindowHandle >> isValid [
	^ handle isNotNil and: [ handle isValid ]
]

{ #category : #factory }
OSGlutinWindowHandle >> newOpenGLRenderer [
	^ renderer := OSGlutinRenderer new 
		window: self;
		yourself
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> pollEvents [
	self isValid
		ifFalse: [ ^ self ].

	handle pollEvents: [ :aWinitEvent | aWinitEvent mapped accept: self ]
]

{ #category : #accessing }
OSGlutinWindowHandle >> position [
	^ self winitWindow position
]

{ #category : #accessing }
OSGlutinWindowHandle >> show [
	
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
	
	osEvent := aState = GlutinEventInputElementState Pressed
		ifTrue: [ OSMouseButtonPressEvent for: osWindow ]
		ifFalse: [ OSMouseButtonReleaseEvent for: osWindow ].
		
	osEvent button: aButton button_code.
	osEvent position: cursorPosition.
		
	self convertModifiers: aMouseInputEvent modifiers for: osEvent modifiers.
	^ osEvent deliver.
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitMouseWheelEvent: aMouseWheelEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitTouchEvent: aTouchEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitUnknownEvent: anUnknownEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowCloseRequest: aWindowCloseRequest [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowDestroyed: aWindowDestroyedEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowMovedEvent: aWindowMovedEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowRefreshEvent: aWindowRefreshEvent [
	
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> visitWindowResizedEvent: aWindowResizedEvent [
	
]

{ #category : #accessing }
OSGlutinWindowHandle >> winitWindow [
	<return: #WinitWindow>

	^ self handle
]
