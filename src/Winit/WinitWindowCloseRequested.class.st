Class {
	#name : #WinitWindowCloseRequested,
	#superclass : #WinitWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitWindowCloseRequested class >> eventType [
	^ WinitEventType WindowEventCloseRequested
]

{ #category : #'event type' }
WinitWindowCloseRequested class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitWindowCloseRequested >> accept: aVisitor [
	^ aVisitor visitWindowCloseRequest: self
]
