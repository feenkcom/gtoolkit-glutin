Class {
	#name : #GlutinKeyboardInputEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_DEVICE_ID',
		'OFFSET_HAS_VIRTUAL_KEYCODE',
		'OFFSET_IS_SYNTHETIC',
		'OFFSET_MODIFIERS',
		'OFFSET_SCAN_CODE',
		'OFFSET_STATE',
		'OFFSET_VIRTUAL_KEYCODE'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinKeyboardInputEvent class >> eventType [
	^ GlutinEventType WindowEventKeyboardInput
]

{ #category : #'field definition' }
GlutinKeyboardInputEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		uint32 scan_code
		GlutinEventInputElementState state
		bool has_virtual_keycode
		GlutinEventVirtualKeyCode virtual_keycode
		bool is_synthetic
 	)
]

{ #category : #'event type' }
GlutinKeyboardInputEvent class >> fromBaseEvent: anEvent [
	^ anEvent keyboard_input windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinKeyboardInputEvent >> accept: aVisitor [
	^ aVisitor visitKeyboardInputEvent: self
]

{ #category : #copying }
GlutinKeyboardInputEvent >> copy [
	^ super copy
		device_id: self device_id;
		has_virtual_keycode: self has_virtual_keycode;
		is_synthetic: self is_synthetic;
		scan_code: self scan_code;
		state: self state;
		virtual_keycode: self virtual_keycode;
		yourself
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> has_virtual_keycode [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_HAS_VIRTUAL_KEYCODE
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> has_virtual_keycode: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_HAS_VIRTUAL_KEYCODE put: anObject
]

{ #category : #testing }
GlutinKeyboardInputEvent >> isKeyboardInputEvent [
	^ true
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> is_synthetic [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_IS_SYNTHETIC
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> is_synthetic: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_IS_SYNTHETIC put: anObject
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> scan_code [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SCAN_CODE
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> scan_code: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SCAN_CODE put: anObject
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> state [
	"This method was automatically generated"
	^GlutinEventInputElementState fromInteger: (handle unsignedLongAt: OFFSET_STATE)
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> state: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_STATE put: anObject value
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> virtual_keycode [
	"This method was automatically generated"
	^GlutinEventVirtualKeyCode fromInteger: (handle unsignedLongAt: OFFSET_VIRTUAL_KEYCODE)
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> virtual_keycode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VIRTUAL_KEYCODE put: anObject value
]
