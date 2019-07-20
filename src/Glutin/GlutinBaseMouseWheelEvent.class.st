Class {
	#name : #GlutinBaseMouseWheelEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_DELTA',
		'OFFSET_DEVICE_ID',
		'OFFSET_MODIFIERS',
		'OFFSET_PHASE'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseMouseWheelEvent class >> eventType [
	^ GlutinEventType WindowEventMouseWheel
]

{ #category : #'field definition' }
GlutinBaseMouseWheelEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		WinitEventTouchPhase phase
		WinitMouseScrollDelta delta
		#GlutinEventModifiersState modifiers
 	)
]

{ #category : #'event type' }
GlutinBaseMouseWheelEvent class >> fromBaseEvent: anEvent [
	^ anEvent mouse_wheel
]

{ #category : #visiting }
GlutinBaseMouseWheelEvent >> accept: aVisitor [
	^ aVisitor visitMouseWheelEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseWheelEvent >> delta [
	"This method was automatically generated"
	^ WinitMouseScrollDelta fromHandle: (handle referenceStructAt: OFFSET_DELTA length: WinitMouseScrollDelta byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseWheelEvent >> delta: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DELTA put: anObject getHandle length: WinitMouseScrollDelta byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseWheelEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseWheelEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseWheelEvent >> modifiers [
	"This method was automatically generated"
	^ GlutinEventModifiersState fromHandle: (handle referenceStructAt: OFFSET_MODIFIERS length: GlutinEventModifiersState byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseWheelEvent >> modifiers: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MODIFIERS put: anObject getHandle length: GlutinEventModifiersState byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseWheelEvent >> phase [
	"This method was automatically generated"
	^WinitEventTouchPhase fromInteger: (handle unsignedLongAt: OFFSET_PHASE)
]

{ #category : #'accessing structure variables' }
GlutinBaseMouseWheelEvent >> phase: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PHASE put: anObject value
]
