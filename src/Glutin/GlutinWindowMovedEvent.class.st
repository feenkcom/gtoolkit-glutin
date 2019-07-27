Class {
	#name : #GlutinWindowMovedEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinWindowMovedEvent class >> eventType [
	^ GlutinEventType WindowEventMoved
]

{ #category : #'field definition' }
GlutinWindowMovedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 x
		float64 y
 	)
]

{ #category : #'event type' }
GlutinWindowMovedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_moved windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinWindowMovedEvent >> accept: aVisitor [
	^ aVisitor visitWindowMovedEvent: self
]

{ #category : #'accessing structure variables' }
GlutinWindowMovedEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinWindowMovedEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinWindowMovedEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinWindowMovedEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
