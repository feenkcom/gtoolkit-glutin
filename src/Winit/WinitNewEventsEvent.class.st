Class {
	#name : #WinitNewEventsEvent,
	#superclass : #WinitCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitNewEventsEvent class >> eventType [
	^ WinitEventType NewEvents
]

{ #category : #'event type' }
WinitNewEventsEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
WinitNewEventsEvent >> accept: aVisitor [
	^ aVisitor visitNewEvents: self
]
