Class {
	#name : #WinitDeviceEvent,
	#superclass : #WinitMappedEvent,
	#category : #'Winit-Events'
}

{ #category : #copying }
WinitDeviceEvent >> copy [
	^ self class new
]

{ #category : #testing }
WinitDeviceEvent >> isDeviceEvent [
	^ true
]
