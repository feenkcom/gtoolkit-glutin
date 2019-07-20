Class {
	#name : #GlutinBaseWindowCloseRequested,
	#superclass : #GlutinWindowEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseWindowCloseRequested class >> eventType [
	^ GlutinEventType WindowEventCloseRequested
]

{ #category : #'event type' }
GlutinBaseWindowCloseRequested class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinBaseWindowCloseRequested >> accept: aVisitor [
	^ aVisitor visitWindowCloseRequest: self
]
