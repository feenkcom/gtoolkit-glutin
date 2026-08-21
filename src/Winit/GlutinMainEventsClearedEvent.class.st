"
Emitted when all of the event loop's events have been processed and control flow is about to be taken away from the program.


"
Class {
	#name : #GlutinMainEventsClearedEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinMainEventsClearedEvent class >> eventType [
	^ WinitEventType MainEventsCleared
]

{ #category : #visiting }
GlutinMainEventsClearedEvent >> accept: aVisitor [
	^ aVisitor visitMainEventsCleared: self
]
