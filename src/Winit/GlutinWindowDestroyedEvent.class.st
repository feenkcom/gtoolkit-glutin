Class {
	#name : #GlutinWindowDestroyedEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowDestroyedEvent class >> eventType [
	^ WinitEventType WindowEventDestroyed
]

{ #category : #visiting }
GlutinWindowDestroyedEvent >> accept: aVisitor [
	^ aVisitor visitWindowDestroyed: self
]
