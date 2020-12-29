Class {
	#name : #WinitResumedEvent,
	#superclass : #WinitCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitResumedEvent class >> eventType [
	^ WinitEventType Resumed
]

{ #category : #'event type' }
WinitResumedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
WinitResumedEvent >> accept: aVisitor [
	^ aVisitor visitResumed: self
]
