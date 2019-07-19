Class {
	#name : #GlutinBaseWindowRefreshEvent,
	#superclass : #GlutinWindowEvent,
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseWindowRefreshEvent class >> eventType [
	^ WinitEventType WindowEventRefresh
]

{ #category : #'event type' }
GlutinBaseWindowRefreshEvent class >> fromBaseEvent: anEvent [
	^ self new
]

{ #category : #visiting }
GlutinBaseWindowRefreshEvent >> accept: aVisitor [
	^ aVisitor visitWindowRefreshEvent: self
]
