Class {
	#name : #GlutinMappedEvent,
	#superclass : #Object,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-Events'
}

{ #category : #'instance creation' }
GlutinMappedEvent class >> fromHandle: aHandle [
	| event |
	event := self new.
	event readFromHandle: aHandle.
	self primRelease: aHandle.
	^ event
]

{ #category : #'event type' }
GlutinMappedEvent class >> eventType [
	^ nil
]

{ #category : #'private - ffi' }
GlutinMappedEvent class >> primRelease: aHandle [
	"Subclasses override with typed release calls"
]

{ #category : #testing }
GlutinMappedEvent >> isCommonEvent [
	^ false
]

{ #category : #testing }
GlutinMappedEvent >> isDeviceEvent [
	^ false
]

{ #category : #testing }
GlutinMappedEvent >> isKeyboardInputEvent [
	^ false
]

{ #category : #testing }
GlutinMappedEvent >> isWindowEvent [
	^ false
]

{ #category : #initialization }
GlutinMappedEvent >> readFromHandle: aHandle [
	"Subclasses read their fields from the native handle"
]

{ #category : #visiting }
GlutinMappedEvent >> accept: aVisitor [
	^ self subclassResponsibility
]
