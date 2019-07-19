Class {
	#name : #GlutinBaseTouchEvent,
	#superclass : #GlutinWindowEvent,
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
GlutinBaseTouchEvent class >> eventType [
	^ WinitEventType WindowEventTouch
]

{ #category : #'field definition' }
GlutinBaseTouchEvent class >> fieldsDesc [
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
GlutinBaseTouchEvent class >> fromBaseEvent: anEvent [
	^ anEvent touch
]

{ #category : #visiting }
GlutinBaseTouchEvent >> accept: aVisitor [
	^ aVisitor visitTouchEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> id [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_ID
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> phase [
	"This method was automatically generated"
	^WinitEventTouchPhase fromInteger: (handle unsignedLongAt: OFFSET_PHASE)
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> phase: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PHASE put: anObject value
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinBaseTouchEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
