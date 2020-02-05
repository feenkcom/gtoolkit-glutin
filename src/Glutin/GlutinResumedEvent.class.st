"
Emitted when the application has been resumed.
"
Class {
	#name : #GlutinResumedEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinResumedEvent class >> eventType [
	^ GlutinEventType Resumed
]

{ #category : #'event type' }
GlutinResumedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinResumedEvent >> accept: aVisitor [
	^ aVisitor visitResumed: self
]
