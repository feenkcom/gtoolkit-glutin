Class {
	#name : #WinitMouseWheelEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_DELTA',
		'OFFSET_DEVICE_ID',
		'OFFSET_PHASE'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitMouseWheelEvent class >> eventType [
	^ WinitEventType WindowEventMouseWheel
]

{ #category : #'field definition' }
WinitMouseWheelEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		WinitEventTouchPhase phase
		WinitMouseScrollDelta delta
 	)
]

{ #category : #'event type' }
WinitMouseWheelEvent class >> fromBaseEvent: anEvent [
	^ anEvent mouse_wheel windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitMouseWheelEvent >> accept: aVisitor [
	^ aVisitor visitMouseWheelEvent: self
]

{ #category : #copying }
WinitMouseWheelEvent >> copy [
	^ super copy
		delta: self delta;
		device_id: self device_id;
		phase: self phase;
		yourself
]

{ #category : #'accessing structure variables' }
WinitMouseWheelEvent >> delta [
	"This method was automatically generated"
	^ WinitMouseScrollDelta fromHandle: (handle referenceStructAt: OFFSET_DELTA length: WinitMouseScrollDelta byteSize)
]

{ #category : #'accessing structure variables' }
WinitMouseWheelEvent >> delta: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DELTA put: anObject getHandle length: WinitMouseScrollDelta byteSize
]

{ #category : #'accessing structure variables' }
WinitMouseWheelEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
WinitMouseWheelEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
WinitMouseWheelEvent >> phase [
	"This method was automatically generated"
	^WinitEventTouchPhase fromInteger: (handle unsignedLongAt: OFFSET_PHASE)
]

{ #category : #'accessing structure variables' }
WinitMouseWheelEvent >> phase: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PHASE put: anObject value
]
