Class {
	#name : #GlutinDeviceEvent,
	#superclass : #GlutinMappedEvent,
	#category : #'Glutin-Events'
}

{ #category : #copying }
GlutinDeviceEvent >> copy [
	^ self class new
]

{ #category : #testing }
GlutinDeviceEvent >> isDeviceEvent [
	^ true
]
