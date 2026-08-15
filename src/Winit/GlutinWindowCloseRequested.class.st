Class {
	#name : #GlutinWindowCloseRequested,
	#superclass : #GlutinWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowCloseRequested class >> eventType [
	^ WinitEventType WindowEventCloseRequested
]

{ #category : #'event type' }
GlutinWindowCloseRequested class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinWindowCloseRequested >> accept: aVisitor [
	^ aVisitor visitWindowCloseRequest: self
]
