Class {
	#name : #WinitMappedEvent,
	#superclass : #FFIExternalStructure,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
WinitMappedEvent class >> eventType [
	^ nil
]

{ #category : #'event type' }
WinitMappedEvent class >> fromBaseEvent: anEvent [
	^ self subclassResponsibility
]
