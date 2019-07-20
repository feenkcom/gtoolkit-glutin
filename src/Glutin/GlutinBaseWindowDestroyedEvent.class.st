Class {
	#name : #GlutinBaseWindowDestroyedEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseWindowDestroyedEvent class >> eventType [
	^ GlutinEventType WindowEventDestroyed
]

{ #category : #'event type' }
GlutinBaseWindowDestroyedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinBaseWindowDestroyedEvent >> accept: aVisitor [
	^ aVisitor visitWindowDestroyed: self
]
