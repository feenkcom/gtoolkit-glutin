Class {
	#name : #GlutinWindowCloseRequested,
	#superclass : #GlutinWindowEvent,
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowCloseRequested class >> eventType [
	^ WinitEventType WindowEventCloseRequested
]

{ #category : #'private - ffi' }
GlutinWindowCloseRequested class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_close_requested_release(void* aHandle))
]

{ #category : #visiting }
GlutinWindowCloseRequested >> accept: aVisitor [
	^ aVisitor visitWindowCloseRequest: self
]
