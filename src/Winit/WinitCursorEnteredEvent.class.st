Class {
	#name : #WinitCursorEnteredEvent,
	#superclass : #WinitWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitCursorEnteredEvent class >> eventType [
	^ WinitEventType WindowEventCursorEntered
]

{ #category : #'event type' }
WinitCursorEnteredEvent class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitCursorEnteredEvent >> accept: aVisitor [
	^ aVisitor visitCursorEnteredEvent: self
]
