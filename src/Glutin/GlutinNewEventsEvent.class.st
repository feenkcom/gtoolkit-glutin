"
Emitted when new events arrive from the OS to be processed.
"
Class {
	#name : #GlutinNewEventsEvent,
	#superclass : #GlutinMappedEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinNewEventsEvent class >> eventType [
	^ GlutinEventType NewEvents
]

{ #category : #'event type' }
GlutinNewEventsEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinNewEventsEvent >> accept: aVisitor [
	^ aVisitor visitNewEvents: self
]
