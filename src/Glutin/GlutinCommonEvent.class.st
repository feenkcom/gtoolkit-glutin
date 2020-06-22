Class {
	#name : #GlutinCommonEvent,
	#superclass : #GlutinMappedEvent,
	#category : #'Glutin-Events'
}

{ #category : #copying }
GlutinCommonEvent >> copy [
	^ self class new
]

{ #category : #testing }
GlutinCommonEvent >> isCommonEvent [
	^ true
]
