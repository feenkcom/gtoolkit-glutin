Class {
	#name : #GlutinMouseInputEvent,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'device_id',
		'state',
		'button'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinMouseInputEvent class >> eventType [
	^ WinitEventType WindowEventMouseInput
]

{ #category : #'private - ffi' }
GlutinMouseInputEvent class >> primButtonCode: aHandle [
	^ self ffiCall: #(uint16 winit_event_mouse_input_button_code(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseInputEvent class >> primButtonType: aHandle [
	^ self ffiCall: #(uint32 winit_event_mouse_input_button_type(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseInputEvent class >> primDeviceId: aHandle [
	^ self ffiCall: #(int64 winit_event_mouse_input_device_id(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseInputEvent class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_mouse_input_release(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinMouseInputEvent class >> primState: aHandle [
	^ self ffiCall: #(uint32 winit_event_mouse_input_state(void* aHandle))
]

{ #category : #visiting }
GlutinMouseInputEvent >> accept: aVisitor [
	^ aVisitor visitMouseInputEvent: self
]

{ #category : #accessing }
GlutinMouseInputEvent >> button [
	^ button
]

{ #category : #accessing }
GlutinMouseInputEvent >> device_id [
	^ device_id
]

{ #category : #initialization }
GlutinMouseInputEvent >> readFromHandle: aHandle [
	device_id := self class primDeviceId: aHandle.
	state := WinitEventInputElementState fromInteger: (self class primState: aHandle).
	button := GlutinEventMouseButton new
		button_type: (WinitEventMouseButtonType fromInteger: (self class primButtonType: aHandle));
		button_code: (self class primButtonCode: aHandle);
		yourself
]

{ #category : #accessing }
GlutinMouseInputEvent >> state [
	^ state
]
