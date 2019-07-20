Class {
	#name : #GlutinBaseWindowMovedEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseWindowMovedEvent class >> eventType [
	^ GlutinEventType WindowEventMoved
]

{ #category : #'field definition' }
GlutinBaseWindowMovedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 x
		float64 y
 	)
]

{ #category : #'event type' }
GlutinBaseWindowMovedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_moved
]

{ #category : #visiting }
GlutinBaseWindowMovedEvent >> accept: aVisitor [
	^ aVisitor visitWindowMovedEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseWindowMovedEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinBaseWindowMovedEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseWindowMovedEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinBaseWindowMovedEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
