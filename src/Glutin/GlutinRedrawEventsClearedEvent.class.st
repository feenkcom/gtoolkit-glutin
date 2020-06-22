Class {
	#name : #GlutinRedrawEventsClearedEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinRedrawEventsClearedEvent class >> eventType [
	^ GlutinEventType RedrawEventsCleared
]

{ #category : #'event type' }
GlutinRedrawEventsClearedEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinRedrawEventsClearedEvent >> accept: aVisitor [
	^ aVisitor visitRedrawEventsCleared: self
]
