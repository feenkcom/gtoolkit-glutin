Class {
	#name : #GlutinWindowCloseRequested,
	#superclass : #GlutinWindowEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinWindowCloseRequested class >> eventType [
	^ GlutinEventType WindowEventCloseRequested
]

{ #category : #'event type' }
GlutinWindowCloseRequested class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinWindowCloseRequested >> accept: aVisitor [
	^ aVisitor visitWindowCloseRequest: self
]
