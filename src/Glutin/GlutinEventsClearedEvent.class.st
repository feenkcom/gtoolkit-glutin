"
Emitted when all of the event loop's events have been processed and control flow is about to be taken away from the program.
"
Class {
	#name : #GlutinEventsClearedEvent,
	#superclass : #GlutinMappedEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinEventsClearedEvent class >> eventType [
	^ GlutinEventType EventsCleared
]

{ #category : #'event type' }
GlutinEventsClearedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinEventsClearedEvent >> accept: aVisitor [
	^ aVisitor visitEventsCleared: self
]

{ #category : #testing }
GlutinEventsClearedEvent >> isCommonEvent [
	^ true
]
