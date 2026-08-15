Class {
	#name : #GlutinDeviceEvent,
	#superclass : #GlutinMappedEvent,
	#category : #'Winit-Events'
}

{ #category : #copying }
GlutinDeviceEvent >> copy [
	^ self class new
]

{ #category : #testing }
GlutinDeviceEvent >> isDeviceEvent [
	^ true
]
