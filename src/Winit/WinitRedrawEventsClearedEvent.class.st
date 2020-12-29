Class {
	#name : #WinitRedrawEventsClearedEvent,
	#superclass : #WinitCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitRedrawEventsClearedEvent class >> eventType [
	^ WinitEventType RedrawEventsCleared
]

{ #category : #'event type' }
WinitRedrawEventsClearedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
WinitRedrawEventsClearedEvent >> accept: aVisitor [
	^ aVisitor visitRedrawEventsCleared: self
]
