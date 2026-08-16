Class {
	#name : #GlutinMouseWheelEvent,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'device_id',
		'phase',
		'delta'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinMouseWheelEvent class >> eventType [
	^ WinitEventType WindowEventMouseWheel
]

{ #category : #'private - ffi' }
GlutinMouseWheelEvent class >> primDeltaType: aHandle [
	^ self ffiCall: #(uint32 winit_event_mouse_wheel_delta_type(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseWheelEvent class >> primDeltaX: aHandle [
	^ self ffiCall: #(float64 winit_event_mouse_wheel_delta_x(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseWheelEvent class >> primDeltaY: aHandle [
	^ self ffiCall: #(float64 winit_event_mouse_wheel_delta_y(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseWheelEvent class >> primDeviceId: aHandle [
	^ self ffiCall: #(int64 winit_event_mouse_wheel_device_id(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseWheelEvent class >> primPhase: aHandle [
	^ self ffiCall: #(uint32 winit_event_mouse_wheel_phase(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseWheelEvent class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_mouse_wheel_release(void* aHandle))
]

{ #category : #visiting }
GlutinMouseWheelEvent >> accept: aVisitor [
	^ aVisitor visitMouseWheelEvent: self
]

{ #category : #accessing }
GlutinMouseWheelEvent >> delta [
	^ delta
]

{ #category : #accessing }
GlutinMouseWheelEvent >> device_id [
	^ device_id
]

{ #category : #accessing }
GlutinMouseWheelEvent >> phase [
	^ phase
]

{ #category : #initialization }
GlutinMouseWheelEvent >> readFromHandle: aHandle [
	device_id := self class primDeviceId: aHandle.
	phase := WinitEventTouchPhase fromInteger: (self class primPhase: aHandle).
	delta := GlutinMouseScrollDelta new
		type: (WinitEventMouseScrollDeltaType fromInteger: (self class primDeltaType: aHandle));
		x: (self class primDeltaX: aHandle);
		y: (self class primDeltaY: aHandle);
		yourself
]
