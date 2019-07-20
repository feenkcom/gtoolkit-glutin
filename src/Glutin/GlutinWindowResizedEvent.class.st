Class {
	#name : #GlutinWindowResizedEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_HEIGHT',
		'OFFSET_WIDTH'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinWindowResizedEvent class >> eventType [
	^ GlutinEventType WindowEventResized
]

{ #category : #'field definition' }
GlutinWindowResizedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 width
		float64 height
 	)
]

{ #category : #'event type' }
GlutinWindowResizedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_resized
]

{ #category : #visiting }
GlutinWindowResizedEvent >> accept: aVisitor [
	^ aVisitor visitWindowResizedEvent: self
]

{ #category : #'accessing structure variables' }
GlutinWindowResizedEvent >> height [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_HEIGHT
]

{ #category : #'accessing structure variables' }
GlutinWindowResizedEvent >> height: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing structure variables' }
GlutinWindowResizedEvent >> width [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_WIDTH
]

{ #category : #'accessing structure variables' }
GlutinWindowResizedEvent >> width: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_WIDTH put: anObject
]
