Class {
	#name : #GlutinWindowEvent,
	#superclass : #GlutinMappedEvent,
	#instVars : [
		'windowId'
	],
	#category : #'Glutin-Events'
}

{ #category : #testing }
GlutinWindowEvent >> isWindowEvent [
	^ true
]

{ #category : #accessing }
GlutinWindowEvent >> windowId [
	^ windowId
]

{ #category : #accessing }
GlutinWindowEvent >> windowId: anObject [
	windowId := anObject
]
