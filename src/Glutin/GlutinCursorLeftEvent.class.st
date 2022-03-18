Class {
	#name : #GlutinCursorLeftEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinCursorLeftEvent class >> eventType [
	^ WinitEventType WindowEventCursorLeft
]

{ #category : #'event type' }
GlutinCursorLeftEvent class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinCursorLeftEvent >> accept: aVisitor [
	^ aVisitor visitCursorLeftEvent: self
]
