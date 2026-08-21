Class {
	#name : #GlutinWindowFocusedEvent,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'is_focused'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowFocusedEvent class >> eventType [
	^ WinitEventType WindowEventFocused
]

{ #category : #'private - ffi' }
GlutinWindowFocusedEvent class >> primIsFocused: aHandle [
	^ self ffiCall: #(bool winit_event_window_focused_is_focused(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinWindowFocusedEvent class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_window_focused_release(void* aHandle))
]

{ #category : #visiting }
GlutinWindowFocusedEvent >> accept: aVisitor [
	^ aVisitor visitWindowFocusedEvent: self
]

{ #category : #accessing }
GlutinWindowFocusedEvent >> is_focused [
	^ is_focused
]

{ #category : #initialization }
GlutinWindowFocusedEvent >> readFromHandle: aHandle [
	is_focused := self class primIsFocused: aHandle
]
