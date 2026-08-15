"
Emitted when new events arrive from the OS to be processed.


"
Class {
	#name : #GlutinNewEventsEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinNewEventsEvent class >> eventType [
	^ WinitEventType NewEvents
]

{ #category : #visiting }
GlutinNewEventsEvent >> accept: aVisitor [
	^ aVisitor visitNewEvents: self
]
