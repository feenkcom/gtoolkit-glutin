Class {
	#name : #GlutinMouseWheelEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_DELTA',
		'OFFSET_DEVICE_ID',
		'OFFSET_PHASE'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinMouseWheelEvent class >> eventType [
	^ GlutinEventType WindowEventMouseWheel
]

{ #category : #'field definition' }
GlutinMouseWheelEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		GlutinEventTouchPhase phase
		GlutinMouseScrollDelta delta
 	)
]

{ #category : #'event type' }
GlutinMouseWheelEvent class >> fromBaseEvent: anEvent [
	^ anEvent mouse_wheel windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinMouseWheelEvent >> accept: aVisitor [
	^ aVisitor visitMouseWheelEvent: self
]

{ #category : #'accessing structure variables' }
GlutinMouseWheelEvent >> delta [
	"This method was automatically generated"
	^ GlutinMouseScrollDelta fromHandle: (handle referenceStructAt: OFFSET_DELTA length: GlutinMouseScrollDelta byteSize)
]

{ #category : #'accessing structure variables' }
GlutinMouseWheelEvent >> delta: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DELTA put: anObject getHandle length: GlutinMouseScrollDelta byteSize
]

{ #category : #'accessing structure variables' }
GlutinMouseWheelEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinMouseWheelEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinMouseWheelEvent >> phase [
	"This method was automatically generated"
	^GlutinEventTouchPhase fromInteger: (handle unsignedLongAt: OFFSET_PHASE)
]

{ #category : #'accessing structure variables' }
GlutinMouseWheelEvent >> phase: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PHASE put: anObject value
]
