Class {
	#name : #WinitBaseWindowCloseRequested,
	#superclass : #WinitMappedEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitBaseWindowCloseRequested class >> eventType [
	^ WinitEventType WindowEventCloseRequested
]

{ #category : #'event type' }
WinitBaseWindowCloseRequested class >> fromBaseEvent: anEvent [
	^ self new
]
