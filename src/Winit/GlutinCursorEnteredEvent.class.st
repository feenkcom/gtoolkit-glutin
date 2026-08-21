Class {
	#name : #GlutinCursorEnteredEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinCursorEnteredEvent class >> eventType [
	^ WinitEventType WindowEventCursorEntered
]

{ #category : #visiting }
GlutinCursorEnteredEvent >> accept: aVisitor [
	^ aVisitor visitCursorEnteredEvent: self
]
