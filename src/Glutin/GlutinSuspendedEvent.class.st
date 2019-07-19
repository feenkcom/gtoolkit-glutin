"
Emitted when the application has been suspended.
"
Class {
	#name : #GlutinSuspendedEvent,
	#superclass : #GlutinMappedEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinSuspendedEvent class >> eventType [
	^ WinitEventType Suspended
]

{ #category : #'event type' }
GlutinSuspendedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinSuspendedEvent >> accept: aVisitor [
	^ aVisitor visitSuspended: self
]
