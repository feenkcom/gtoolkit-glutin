"
Emitted when the application has been suspended.


"
Class {
	#name : #GlutinSuspendedEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinSuspendedEvent class >> eventType [
	^ WinitEventType Suspended
]

{ #category : #visiting }
GlutinSuspendedEvent >> accept: aVisitor [
	^ aVisitor visitSuspended: self
]
