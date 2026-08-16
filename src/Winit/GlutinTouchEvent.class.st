Class {
	#name : #GlutinTouchEvent,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'device_id',
		'phase',
		'x',
		'y',
		'id'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinTouchEvent class >> eventType [
	^ WinitEventType WindowEventTouch
]

{ #category : #'private - ffi' }
GlutinTouchEvent class >> primDeviceId: aHandle [
	^ self ffiCall: #(int64 winit_event_touch_device_id(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinTouchEvent class >> primId: aHandle [
	^ self ffiCall: #(uint64 winit_event_touch_id(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinTouchEvent class >> primPhase: aHandle [
	^ self ffiCall: #(uint32 winit_event_touch_phase(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinTouchEvent class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_touch_release(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinTouchEvent class >> primX: aHandle [
	^ self ffiCall: #(float64 winit_event_touch_x(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinTouchEvent class >> primY: aHandle [
	^ self ffiCall: #(float64 winit_event_touch_y(void* aHandle))
]

{ #category : #visiting }
GlutinTouchEvent >> accept: aVisitor [
	^ aVisitor visitTouchEvent: self
]

{ #category : #accessing }
GlutinTouchEvent >> device_id [
	^ device_id
]

{ #category : #accessing }
GlutinTouchEvent >> id [
	^ id
]

{ #category : #accessing }
GlutinTouchEvent >> phase [
	^ phase
]

{ #category : #initialization }
GlutinTouchEvent >> readFromHandle: aHandle [
	device_id := self class primDeviceId: aHandle.
	phase := WinitEventTouchPhase fromInteger: (self class primPhase: aHandle).
	x := self class primX: aHandle.
	y := self class primY: aHandle.
	id := self class primId: aHandle
]

{ #category : #accessing }
GlutinTouchEvent >> x [
	^ x
]

{ #category : #accessing }
GlutinTouchEvent >> y [
	^ y
]
