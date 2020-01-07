"
Emitted when all of the event loop's events have been processed and control flow is about to be taken away from the program.
"
Class {
	#name : #GlutinMainEventsClearedEvent,
	#superclass : #GlutinMappedEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinMainEventsClearedEvent class >> eventType [
	^ GlutinEventType MainEventsCleared
]

{ #category : #'event type' }
GlutinMainEventsClearedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinMainEventsClearedEvent >> accept: aVisitor [
	^ aVisitor visitEventsCleared: self
]

{ #category : #testing }
GlutinMainEventsClearedEvent >> isCommonEvent [
	^ true
]
