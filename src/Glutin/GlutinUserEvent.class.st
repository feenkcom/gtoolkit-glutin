Class {
	#name : #GlutinUserEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinUserEvent class >> eventType [
	^ GlutinEventType UserEvent
]

{ #category : #'event type' }
GlutinUserEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinUserEvent >> accept: aVisitor [
	^ aVisitor visitUserEvent: self
]
