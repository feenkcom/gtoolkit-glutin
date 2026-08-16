Class {
	#name : #GlutinWindowResizedEvent,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'width',
		'height'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowResizedEvent class >> eventType [
	^ WinitEventType WindowEventResized
]

{ #category : #'private - ffi' }
GlutinWindowResizedEvent class >> primHeight: aHandle [
	^ self ffiCall: #(uint32 winit_event_window_resized_height(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinWindowResizedEvent class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_window_resized_release(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinWindowResizedEvent class >> primWidth: aHandle [
	^ self ffiCall: #(uint32 winit_event_window_resized_width(void* aHandle))
]

{ #category : #visiting }
GlutinWindowResizedEvent >> accept: aVisitor [
	^ aVisitor visitWindowResizedEvent: self
]

{ #category : #accessing }
GlutinWindowResizedEvent >> height [
	^ height
]

{ #category : #initialization }
GlutinWindowResizedEvent >> readFromHandle: aHandle [
	width := self class primWidth: aHandle.
	height := self class primHeight: aHandle
]

{ #category : #accessing }
GlutinWindowResizedEvent >> width [
	^ width
]
