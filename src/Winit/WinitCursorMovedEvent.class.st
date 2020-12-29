Class {
	#name : #WinitCursorMovedEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_DEVICE_ID',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitCursorMovedEvent class >> eventType [
	^ WinitEventType WindowEventCursorMoved
]

{ #category : #'field definition' }
WinitCursorMovedEvent class >> fieldsDesc [
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
WinitCursorMovedEvent class >> fromBaseEvent: anEvent [
	^ anEvent cursor_moved windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitCursorMovedEvent >> accept: aVisitor [
	^ aVisitor visitCursorMovedEvent: self
]

{ #category : #copying }
WinitCursorMovedEvent >> copy [
	^ super copy
		x: self x;
		y: self y;
		deviceId: self device_id;
		yourself
]

{ #category : #'accessing structure variables' }
WinitCursorMovedEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
WinitCursorMovedEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
WinitCursorMovedEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
WinitCursorMovedEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
WinitCursorMovedEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
WinitCursorMovedEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
