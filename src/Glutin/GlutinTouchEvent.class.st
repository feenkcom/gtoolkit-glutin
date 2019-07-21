Class {
	#name : #GlutinTouchEvent,
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
GlutinTouchEvent class >> eventType [
	^ GlutinEventType WindowEventTouch
]

{ #category : #'field definition' }
GlutinTouchEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		#GlutinEventTouchPhase phase
		float64 x
		float64 y
		uint64 id
 	)
]

{ #category : #'event type' }
GlutinTouchEvent class >> fromBaseEvent: anEvent [
	^ anEvent touch
]

{ #category : #visiting }
GlutinTouchEvent >> accept: aVisitor [
	^ aVisitor visitTouchEvent: self
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> id [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_ID
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> phase [
	"This method was automatically generated"
	^GlutinEventTouchPhase fromInteger: (handle unsignedLongAt: OFFSET_PHASE)
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> phase: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PHASE put: anObject value
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinTouchEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
