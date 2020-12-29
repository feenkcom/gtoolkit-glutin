Class {
	#name : #WinitWindowDestroyedEvent,
	#superclass : #WinitWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitWindowDestroyedEvent class >> eventType [
	^ WinitEventType WindowEventDestroyed
]

{ #category : #'event type' }
WinitWindowDestroyedEvent class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitWindowDestroyedEvent >> accept: aVisitor [
	^ aVisitor visitWindowDestroyed: self
]
