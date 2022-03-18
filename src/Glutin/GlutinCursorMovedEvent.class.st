Class {
	#name : #GlutinCursorMovedEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_DEVICE_ID',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinCursorMovedEvent class >> eventType [
	^ WinitEventType WindowEventCursorMoved
]

{ #category : #'field definition' }
GlutinCursorMovedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		float64 x
		float64 y
 	)
]

{ #category : #'event type' }
GlutinCursorMovedEvent class >> fromBaseEvent: anEvent [
	^ anEvent cursor_moved windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinCursorMovedEvent >> accept: aVisitor [
	^ aVisitor visitCursorMovedEvent: self
]

{ #category : #copying }
GlutinCursorMovedEvent >> copy [
	^ super copy
		x: self x;
		y: self y;
		deviceId: self device_id;
		yourself
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
