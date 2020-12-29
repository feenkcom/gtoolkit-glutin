Class {
	#name : #WinitCommonEvent,
	#superclass : #WinitMappedEvent,
	#category : #'Winit-Events'
}

{ #category : #copying }
WinitCommonEvent >> copy [
	^ self class new
]

{ #category : #testing }
WinitCommonEvent >> isCommonEvent [
	^ true
]
