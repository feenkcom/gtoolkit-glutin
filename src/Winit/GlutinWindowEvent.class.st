Class {
	#name : #GlutinWindowEvent,
	#superclass : #GlutinMappedEvent,
	#instVars : [
		'windowId'
	],
	#category : #'Winit-Events'
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
