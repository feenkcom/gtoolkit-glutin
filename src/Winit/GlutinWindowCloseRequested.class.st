Class {
	#name : #GlutinWindowCloseRequested,
	#superclass : #GlutinWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowCloseRequested class >> eventType [
	^ WinitEventType WindowEventCloseRequested
]

{ #category : #visiting }
GlutinWindowCloseRequested >> accept: aVisitor [
	^ aVisitor visitWindowCloseRequest: self
]
