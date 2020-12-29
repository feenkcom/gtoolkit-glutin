Class {
	#name : #WinitWindowRedrawRequestedEvent,
	#superclass : #WinitWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitWindowRedrawRequestedEvent class >> eventType [
	^ WinitEventType RedrawRequested
]

{ #category : #'event type' }
WinitWindowRedrawRequestedEvent class >> fromBaseEvent: anEvent [
	^ self new windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitWindowRedrawRequestedEvent >> accept: aVisitor [
	^ aVisitor visitWindowRedrawRequested: self
]
