Class {
	#name : #GlutinWindowRedrawRequestedEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinWindowRedrawRequestedEvent class >> eventType [
	^ GlutinEventType WindowEventRedrawRequested
]

{ #category : #'event type' }
GlutinWindowRedrawRequestedEvent class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinWindowRedrawRequestedEvent >> accept: aVisitor [
	^ aVisitor visitWindowRedrawRequested: self
]
