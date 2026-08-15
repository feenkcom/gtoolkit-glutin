Class {
	#name : #GlutinWindowRedrawRequestedEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowRedrawRequestedEvent class >> eventType [
	^ WinitEventType RedrawRequested
]

{ #category : #visiting }
GlutinWindowRedrawRequestedEvent >> accept: aVisitor [
	^ aVisitor visitWindowRedrawRequested: self
]
