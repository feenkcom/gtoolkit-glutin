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

{ #category : #accessing }
WinitUnknownEvent >> baseEvent [
	^ baseEvent
]

{ #category : #accessing }
WinitUnknownEvent >> baseEvent: anObject [
	baseEvent := anObject
]
