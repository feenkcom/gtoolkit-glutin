Class {
	#name : #GlutinCommonEvent,
	#superclass : #GlutinMappedEvent,
	#category : #'Winit-Events'
}

{ #category : #copying }
GlutinCommonEvent >> copy [
	^ self class new
]

{ #category : #testing }
GlutinCommonEvent >> isCommonEvent [
	^ true
]
