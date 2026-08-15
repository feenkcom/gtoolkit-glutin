Class {
	#name : #GlutinRedrawEventsClearedEvent,
	#superclass : #GlutinCommonEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinRedrawEventsClearedEvent class >> eventType [
	^ WinitEventType RedrawEventsCleared
]

{ #category : #visiting }
GlutinRedrawEventsClearedEvent >> accept: aVisitor [
	^ aVisitor visitRedrawEventsCleared: self
]
