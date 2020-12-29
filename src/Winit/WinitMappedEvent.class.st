Class {
	#name : #WinitMappedEvent,
	#superclass : #FFIExternalStructure,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitMappedEvent class >> eventType [
	^ nil
]

{ #category : #'event type' }
WinitMappedEvent class >> fromBaseEvent: anEvent [
	^ self subclassResponsibility
]

{ #category : #visiting }
WinitMappedEvent >> accept: aVisitor [
	^ self subclassResponsibility
]

{ #category : #testing }
WinitMappedEvent >> isCommonEvent [
	^ false
]

{ #category : #testing }
WinitMappedEvent >> isDeviceEvent [
	^ false
]

{ #category : #testing }
WinitMappedEvent >> isKeyboardInputEvent [
	^ false
]

{ #category : #testing }
WinitMappedEvent >> isWindowEvent [
	^ false
]
