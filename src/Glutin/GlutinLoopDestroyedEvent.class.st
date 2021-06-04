"
Emitted when the event loop is being shut down. This is irreversable - if this event is emitted, it is guaranteed to be the last event emitted.


"
Class {
	#name : #GlutinLoopDestroyedEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinLoopDestroyedEvent class >> eventType [
	^ GlutinEventType LoopDestroyed
]

{ #category : #'event type' }
GlutinLoopDestroyedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinLoopDestroyedEvent >> accept: aVisitor [
	^ aVisitor visitLoopDestroyed: self
]
