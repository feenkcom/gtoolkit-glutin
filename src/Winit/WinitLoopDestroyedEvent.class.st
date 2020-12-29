Class {
	#name : #WinitLoopDestroyedEvent,
	#superclass : #WinitCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitLoopDestroyedEvent class >> eventType [
	^ WinitEventType LoopDestroyed
]

{ #category : #'event type' }
WinitLoopDestroyedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
WinitLoopDestroyedEvent >> accept: aVisitor [
	^ aVisitor visitLoopDestroyed: self
]
