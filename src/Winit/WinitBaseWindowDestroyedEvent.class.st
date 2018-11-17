Class {
	#name : #WinitBaseWindowDestroyedEvent,
	#superclass : #WinitMappedEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitBaseWindowDestroyedEvent class >> eventType [
	^ WinitEventType WindowEventDestroyed
]

{ #category : #'event type' }
WinitBaseWindowDestroyedEvent class >> fromBaseEvent: anEvent [
	^ self new
]
