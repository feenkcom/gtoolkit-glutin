Class {
	#name : #GlutinWindowDestroyedEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinWindowDestroyedEvent class >> eventType [
	^ GlutinEventType WindowEventDestroyed
]

{ #category : #'event type' }
GlutinWindowDestroyedEvent class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinWindowDestroyedEvent >> accept: aVisitor [
	^ aVisitor visitWindowDestroyed: self
]
