Class {
	#name : #GlutinCursorLeftEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinCursorLeftEvent class >> eventType [
	^ WinitEventType WindowEventCursorLeft
]

{ #category : #visiting }
GlutinCursorLeftEvent >> accept: aVisitor [
	^ aVisitor visitCursorLeftEvent: self
]
