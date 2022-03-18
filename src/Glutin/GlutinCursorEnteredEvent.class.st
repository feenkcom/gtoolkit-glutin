Class {
	#name : #GlutinCursorEnteredEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinCursorEnteredEvent class >> eventType [
	^ WinitEventType WindowEventCursorEntered
]

{ #category : #'event type' }
GlutinCursorEnteredEvent class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinCursorEnteredEvent >> accept: aVisitor [
	^ aVisitor visitCursorEnteredEvent: self
]
