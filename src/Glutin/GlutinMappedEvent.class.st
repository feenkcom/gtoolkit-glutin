Class {
	#name : #GlutinMappedEvent,
	#superclass : #FFIExternalStructure,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinMappedEvent class >> eventType [
	^ nil
]

{ #category : #'event type' }
GlutinMappedEvent class >> fromBaseEvent: anEvent [
	^ self subclassResponsibility
]

{ #category : #visiting }
GlutinMappedEvent >> accept: aVisitor [
	^ self subclassResponsibility
]
