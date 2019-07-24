Class {
	#name : #GlutinKeyboardInputEvent,
	#superclass : #GlutinWindowEvent,
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
		#GlutinEventVirtualKeyCode virtual_keycode
		GlutinEventModifiersState modifiers
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

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> modifiers [
	"This method was automatically generated"
	^ GlutinEventModifiersState fromHandle: (handle referenceStructAt: OFFSET_MODIFIERS length: GlutinEventModifiersState byteSize)
]

{ #category : #'accessing structure variables' }
GlutinKeyboardInputEvent >> modifiers: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MODIFIERS put: anObject getHandle length: GlutinEventModifiersState byteSize
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
