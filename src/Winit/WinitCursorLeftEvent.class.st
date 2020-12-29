Class {
	#name : #WinitCursorLeftEvent,
	#superclass : #WinitWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitCursorLeftEvent class >> eventType [
	^ WinitEventType WindowEventCursorLeft
]

{ #category : #'event type' }
WinitCursorLeftEvent class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitCursorLeftEvent >> accept: aVisitor [
	^ aVisitor visitCursorLeftEvent: self
]
