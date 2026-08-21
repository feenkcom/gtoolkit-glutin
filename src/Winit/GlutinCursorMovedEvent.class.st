Class {
	#name : #GlutinCursorMovedEvent,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'x',
		'y',
		'device_id'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinCursorMovedEvent class >> eventType [
	^ WinitEventType WindowEventCursorMoved
]

{ #category : #'private - ffi' }
GlutinCursorMovedEvent class >> primDeviceId: aHandle [
	^ self ffiCall: #(int64 winit_event_cursor_moved_device_id(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinCursorMovedEvent class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_cursor_moved_release(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinCursorMovedEvent class >> primX: aHandle [
	^ self ffiCall: #(float64 winit_event_cursor_moved_x(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinCursorMovedEvent class >> primY: aHandle [
	^ self ffiCall: #(float64 winit_event_cursor_moved_y(void* aHandle))
]

{ #category : #visiting }
GlutinCursorMovedEvent >> accept: aVisitor [
	^ aVisitor visitCursorMovedEvent: self
]

{ #category : #accessing }
GlutinCursorMovedEvent >> device_id [
	^ device_id
]

{ #category : #initialization }
GlutinCursorMovedEvent >> readFromHandle: aHandle [
	device_id := self class primDeviceId: aHandle.
	x := self class primX: aHandle.
	y := self class primY: aHandle
]

{ #category : #accessing }
GlutinCursorMovedEvent >> x [
	^ x
]

{ #category : #accessing }
GlutinCursorMovedEvent >> y [
	^ y
]
