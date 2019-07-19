Class {
	#name : #GlutinUnknownEvent,
	#superclass : #GlutinMappedEvent,
	#instVars : [
		'baseEvent'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinUnknownEvent class >> fromBaseEvent: anEvent [
	^ self new baseEvent: anEvent
]

{ #category : #visiting }
GlutinUnknownEvent >> accept: aVisitor [
	^ aVisitor visitUnknownEvent: self
]

{ #category : #accessing }
GlutinUnknownEvent >> baseEvent [
	^ baseEvent
]

{ #category : #accessing }
GlutinUnknownEvent >> baseEvent: anObject [
	baseEvent := anObject
]
