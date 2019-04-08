Class {
	#name : #GlutinBaseKeyboardInputEvent,
	#superclass : #WinitMappedEvent,
	#classVars : [
		'OFFSET_DEVICE_ID',
		'OFFSET_HAS_VIRTUAL_KEYCODE',
		'OFFSET_MODIFIERS',
		'OFFSET_SCAN_CODE',
		'OFFSET_STATE',
		'OFFSET_VIRTUAL_KEYCODE'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseKeyboardInputEvent class >> eventType [
	^ WinitEventType WindowEventKeyboardInput
]

{ #category : #'field definition' }
GlutinBaseKeyboardInputEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		uint32 scan_code
		GlutinEventInputElementState state
		bool has_virtual_keycode
		WinitEventVirtualKeyCode virtual_keycode
		GlutinEventModifiersState modifiers
 	)
]

{ #category : #'event type' }
GlutinBaseKeyboardInputEvent class >> fromBaseEvent: anEvent [
	^ anEvent keyboard_input
]

{ #category : #visiting }
GlutinBaseKeyboardInputEvent >> accept: aVisitor [
	^ aVisitor visitKeyboardInputEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> has_virtual_keycode [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_HAS_VIRTUAL_KEYCODE
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> has_virtual_keycode: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_HAS_VIRTUAL_KEYCODE put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> modifiers [
	"This method was automatically generated"
	^ GlutinEventModifiersState fromHandle: (handle referenceStructAt: OFFSET_MODIFIERS length: GlutinEventModifiersState byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> modifiers: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MODIFIERS put: anObject getHandle length: GlutinEventModifiersState byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> scan_code [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SCAN_CODE
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> scan_code: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SCAN_CODE put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> state [
	"This method was automatically generated"
	^GlutinEventInputElementState fromInteger: (handle unsignedLongAt: OFFSET_STATE)
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> state: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_STATE put: anObject value
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> virtual_keycode [
	"This method was automatically generated"
	^WinitEventVirtualKeyCode fromInteger: (handle unsignedLongAt: OFFSET_VIRTUAL_KEYCODE)
]

{ #category : #'accessing structure variables' }
GlutinBaseKeyboardInputEvent >> virtual_keycode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VIRTUAL_KEYCODE put: anObject value
]
