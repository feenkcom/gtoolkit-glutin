Class {
	#name : #GlutinBaseMouseInputEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_BUTTON',
		'OFFSET_DEVICE_ID',
		'OFFSET_MODIFIERS',
		'OFFSET_STATE'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseMouseInputEvent class >> eventType [
	^ GlutinEventType WindowEventMouseInput
]

{ #category : #'field definition' }
GlutinBaseMouseInputEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		GlutinEventInputElementState state
		GlutinEventMouseButton button
		GlutinEventModifiersState modifiers
 	)
]

{ #category : #'event type' }
GlutinBaseMouseInputEvent class >> fromBaseEvent: anEvent [
	^ anEvent mouse_input
]

{ #category : #visiting }
GlutinBaseMouseInputEvent >> accept: aVisitor [
	^ aVisitor visitMouseInputEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseInputEvent >> button [
	"This method was automatically generated"
	^ GlutinEventMouseButton fromHandle: (handle referenceStructAt: OFFSET_BUTTON length: GlutinEventMouseButton byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseInputEvent >> button: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_BUTTON put: anObject getHandle length: GlutinEventMouseButton byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseInputEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseInputEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseInputEvent >> modifiers [
	"This method was automatically generated"
	^ GlutinEventModifiersState fromHandle: (handle referenceStructAt: OFFSET_MODIFIERS length: GlutinEventModifiersState byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseInputEvent >> modifiers: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MODIFIERS put: anObject getHandle length: GlutinEventModifiersState byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseInputEvent >> state [
	"This method was automatically generated"
	^GlutinEventInputElementState fromInteger: (handle unsignedLongAt: OFFSET_STATE)
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseInputEvent >> state: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_STATE put: anObject value
]
