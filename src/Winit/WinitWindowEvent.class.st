Class {
	#name : #WinitWindowEvent,
	#superclass : #WinitMappedEvent,
	#instVars : [
		'windowId'
	],
	#category : #'Winit-Events'
}

{ #category : #copying }
WinitWindowEvent >> copy [
	^ self class new
		windowId: self windowId
]

{ #category : #testing }
WinitWindowEvent >> isWindowEvent [
	^ true
]

{ #category : #accessing }
WinitWindowEvent >> windowId [
	^ windowId
]

{ #category : #accessing }
WinitWindowEvent >> windowId: anObject [
	windowId := anObject
]
