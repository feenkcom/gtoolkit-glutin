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
	^ GlutinEventType WindowEventCursorMoved
]

{ #category : #'field definition' }
GlutinCursorMovedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		int32 x
		int32 y
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
	^handle signedLongAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> x: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> y [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinCursorMovedEvent >> y: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_Y put: anObject
]
