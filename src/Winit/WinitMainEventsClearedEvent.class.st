Class {
	#name : #WinitMainEventsClearedEvent,
	#superclass : #WinitCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitMainEventsClearedEvent class >> eventType [
	^ WinitEventType MainEventsCleared
]

{ #category : #'event type' }
WinitMainEventsClearedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
WinitMainEventsClearedEvent >> accept: aVisitor [
	^ aVisitor visitMainEventsCleared: self
]
