Class {
	#name : #GlutinRedrawEventsClearedEvent,
	#superclass : #GlutinMappedEvent,
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

{ #category : #testing }
GlutinRedrawEventsClearedEvent >> isCommonEvent [
	^ true
]
