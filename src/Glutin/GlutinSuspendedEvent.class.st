"
Emitted when the application has been suspended.


"
Class {
	#name : #GlutinSuspendedEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinSuspendedEvent class >> eventType [
	^ GlutinEventType Suspended
]

{ #category : #'event type' }
GlutinSuspendedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinSuspendedEvent >> accept: aVisitor [
	^ aVisitor visitSuspended: self
]
