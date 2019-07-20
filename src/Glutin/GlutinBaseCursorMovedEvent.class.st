Class {
	#name : #GlutinBaseCursorMovedEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_DEVICE_ID',
		'OFFSET_MODIFIERS',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseCursorMovedEvent class >> eventType [
	^ GlutinEventType WindowEventCursorMoved
]

{ #category : #'field definition' }
GlutinBaseCursorMovedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		float64 x
		float64 y
		GlutinEventModifiersState modifiers
 	)
]

{ #category : #'event type' }
GlutinBaseCursorMovedEvent class >> fromBaseEvent: anEvent [
	^ anEvent cursor_moved
]

{ #category : #visiting }
GlutinBaseCursorMovedEvent >> accept: aVisitor [
	^ aVisitor visitCursorMovedEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseCursorMovedEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinBaseCursorMovedEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseCursorMovedEvent >> modifiers [
	"This method was automatically generated"
	^ GlutinEventModifiersState fromHandle: (handle referenceStructAt: OFFSET_MODIFIERS length: GlutinEventModifiersState byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseCursorMovedEvent >> modifiers: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MODIFIERS put: anObject getHandle length: GlutinEventModifiersState byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseCursorMovedEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinBaseCursorMovedEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseCursorMovedEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinBaseCursorMovedEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
