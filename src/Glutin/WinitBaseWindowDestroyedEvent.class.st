Class {
	#name : #WinitBaseWindowDestroyedEvent,
	#superclass : #WinitMappedEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
WinitBaseWindowDestroyedEvent class >> eventType [
	^ WinitEventType WindowEventDestroyed
]

{ #category : #'event type' }
WinitBaseWindowDestroyedEvent class >> fromBaseEvent: anEvent [
	^ self new
]
