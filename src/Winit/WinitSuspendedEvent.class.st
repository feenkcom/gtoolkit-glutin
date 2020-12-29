Class {
	#name : #WinitSuspendedEvent,
	#superclass : #WinitCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitSuspendedEvent class >> eventType [
	^ WinitEventType Suspended
]

{ #category : #'event type' }
WinitSuspendedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
WinitSuspendedEvent >> accept: aVisitor [
	^ aVisitor visitSuspended: self
]
