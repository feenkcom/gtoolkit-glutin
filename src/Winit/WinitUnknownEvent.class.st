Class {
	#name : #WinitUnknownEvent,
	#superclass : #WinitMappedEvent,
	#instVars : [
		'baseEvent'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitUnknownEvent class >> fromBaseEvent: anEvent [
	^ self new baseEvent: anEvent
]

{ #category : #visiting }
WinitUnknownEvent >> accept: aVisitor [
	^ aVisitor visitUnknownEvent: self
]

{ #category : #accessing }
WinitUnknownEvent >> baseEvent [
	^ baseEvent
]

{ #category : #accessing }
WinitUnknownEvent >> baseEvent: anObject [
	baseEvent := anObject
]
