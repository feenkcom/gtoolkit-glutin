Class {
	#name : #WinitKeyboardInputEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_DEVICE_ID',
		'OFFSET_HAS_VIRTUAL_KEYCODE',
		'OFFSET_IS_SYNTHETIC',
		'OFFSET_SCAN_CODE',
		'OFFSET_STATE',
		'OFFSET_VIRTUAL_KEYCODE'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitKeyboardInputEvent class >> eventType [
	^ WinitEventType WindowEventKeyboardInput
]

{ #category : #'field definition' }
WinitKeyboardInputEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		uint32 scan_code
		WinitEventInputElementState state
		bool has_virtual_keycode
		WinitEventVirtualKeyCode virtual_keycode
		bool is_synthetic
 	)
]

{ #category : #'event type' }
WinitKeyboardInputEvent class >> fromBaseEvent: anEvent [
	^ anEvent keyboard_input windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitKeyboardInputEvent >> accept: aVisitor [
	^ aVisitor visitKeyboardInputEvent: self
]

{ #category : #copying }
WinitKeyboardInputEvent >> copy [
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
WinitKeyboardInputEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> has_virtual_keycode [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_HAS_VIRTUAL_KEYCODE
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> has_virtual_keycode: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_HAS_VIRTUAL_KEYCODE put: anObject
]

{ #category : #testing }
WinitKeyboardInputEvent >> isKeyboardInputEvent [
	^ true
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> is_synthetic [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_IS_SYNTHETIC
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> is_synthetic: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_IS_SYNTHETIC put: anObject
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> scan_code [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SCAN_CODE
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> scan_code: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SCAN_CODE put: anObject
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> state [
	"This method was automatically generated"
	^WinitEventInputElementState fromInteger: (handle unsignedLongAt: OFFSET_STATE)
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> state: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_STATE put: anObject value
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> virtual_keycode [
	"This method was automatically generated"
	^WinitEventVirtualKeyCode fromInteger: (handle unsignedLongAt: OFFSET_VIRTUAL_KEYCODE)
]

{ #category : #'accessing structure variables' }
WinitKeyboardInputEvent >> virtual_keycode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VIRTUAL_KEYCODE put: anObject value
]
