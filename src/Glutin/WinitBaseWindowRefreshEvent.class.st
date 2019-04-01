Class {
	#name : #WinitBaseWindowRefreshEvent,
	#superclass : #WinitMappedEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
WinitBaseWindowRefreshEvent class >> eventType [
	^ WinitEventType WindowEventRefresh
]

{ #category : #'event type' }
WinitBaseWindowRefreshEvent class >> fromBaseEvent: anEvent [
	^ self new
]
