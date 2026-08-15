Class {
	#name : #GlutinUnknownEvent,
	#superclass : #GlutinMappedEvent,
	#instVars : [
		'baseEvent'
	],
	#category : #'Winit-Events'
}

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
