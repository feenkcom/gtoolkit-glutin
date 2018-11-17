Class {
	#name : #WinitMappedEvent,
	#superclass : #FFIExternalStructure,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitMappedEvent class >> eventType [
	^ nil
]

{ #category : #'event type' }
WinitMappedEvent class >> fromBaseEvent: anEvent [
	^ self subclassResponsibility
]
