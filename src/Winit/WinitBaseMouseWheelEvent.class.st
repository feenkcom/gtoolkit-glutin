Class {
	#name : #WinitBaseMouseWheelEvent,
	#superclass : #WinitMappedEvent,
	#classVars : [
		'OFFSET_DELTA',
		'OFFSET_DEVICE_ID',
		'OFFSET_MODIFIERS',
		'OFFSET_PHASE'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitBaseMouseWheelEvent class >> eventType [
	^ WinitEventType WindowEventMouseWheel
]

{ #category : #'field definition' }
WinitBaseMouseWheelEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		WinitEventTouchPhase phase
		WinitMouseScrollDelta delta
		WinitEventModifiersState modifiers
 	)
]

{ #category : #'event type' }
WinitBaseMouseWheelEvent class >> fromBaseEvent: anEvent [
	^ anEvent mouse_wheel
]

{ #category : #'accessing structure variables' }
WinitBaseMouseWheelEvent >> delta [
	"This method was automatically generated"
	^ WinitMouseScrollDelta fromHandle: (handle referenceStructAt: OFFSET_DELTA length: WinitMouseScrollDelta byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseMouseWheelEvent >> delta: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DELTA put: anObject getHandle length: WinitMouseScrollDelta byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseMouseWheelEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
WinitBaseMouseWheelEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
WinitBaseMouseWheelEvent >> modifiers [
	"This method was automatically generated"
	^ WinitEventModifiersState fromHandle: (handle referenceStructAt: OFFSET_MODIFIERS length: WinitEventModifiersState byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseMouseWheelEvent >> modifiers: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MODIFIERS put: anObject getHandle length: WinitEventModifiersState byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseMouseWheelEvent >> phase [
	"This method was automatically generated"
	^WinitEventTouchPhase fromInteger: (handle unsignedLongAt: OFFSET_PHASE)
]

{ #category : #'accessing structure variables' }
WinitBaseMouseWheelEvent >> phase: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PHASE put: anObject value
]
