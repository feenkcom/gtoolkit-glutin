Class {
	#name : #WinitBaseTouchEvent,
	#superclass : #WinitMappedEvent,
	#classVars : [
		'OFFSET_DEVICE_ID',
		'OFFSET_ID',
		'OFFSET_PHASE',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
WinitBaseTouchEvent class >> eventType [
	^ WinitEventType WindowEventTouch
]

{ #category : #'field definition' }
WinitBaseTouchEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		WinitEventTouchPhase phase
		float64 x
		float64 y
		uint64 id
 	)
]

{ #category : #'event type' }
WinitBaseTouchEvent class >> fromBaseEvent: anEvent [
	^ anEvent touch
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> id [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_ID
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> phase [
	"This method was automatically generated"
	^WinitEventTouchPhase fromInteger: (handle unsignedLongAt: OFFSET_PHASE)
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> phase: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PHASE put: anObject value
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
WinitBaseTouchEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
