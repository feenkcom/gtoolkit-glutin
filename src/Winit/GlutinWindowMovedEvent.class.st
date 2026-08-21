Class {
	#name : #GlutinWindowMovedEvent,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'x',
		'y'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowMovedEvent class >> eventType [
	^ WinitEventType WindowEventMoved
]

{ #category : #'private - ffi' }
GlutinWindowMovedEvent class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_window_moved_release(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinWindowMovedEvent class >> primX: aHandle [
	^ self ffiCall: #(int32 winit_event_window_moved_x(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinWindowMovedEvent class >> primY: aHandle [
	^ self ffiCall: #(int32 winit_event_window_moved_y(void* aHandle))
]

{ #category : #visiting }
GlutinWindowMovedEvent >> accept: aVisitor [
	^ aVisitor visitWindowMovedEvent: self
]

{ #category : #initialization }
GlutinWindowMovedEvent >> readFromHandle: aHandle [
	x := self class primX: aHandle.
	y := self class primY: aHandle
]

{ #category : #accessing }
GlutinWindowMovedEvent >> x [
	^ x
]

{ #category : #accessing }
GlutinWindowMovedEvent >> y [
	^ y
]
