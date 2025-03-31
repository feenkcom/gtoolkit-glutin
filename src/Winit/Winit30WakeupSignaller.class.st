Class {
	#name : #Winit30WakeupSignaller,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-External'
}

{ #category : #'private - ffi' }
Winit30WakeupSignaller class >> forVirtualMachine [
	^ self fromNativeHandle: (self
		primCreate: self primitiveGetVirtualMachineEventLoopReceiver
		thunk: self primitiveGetVirtualMachineEventLoop)
]

{ #category : #'private - ffi' }
Winit30WakeupSignaller class >> primCreate: aFunction thunk: aThunk [
	^ self ffiCall: #(void* winit_wakeup_signaller_new(void* aFunction, void* aThunk))
]

{ #category : #'private - ffi' }
Winit30WakeupSignaller class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_wakeup_signaller_release(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WakeupSignaller class >> primitiveGetVirtualMachineEventLoop [
	<primitive: 'primitiveGetEventLoop'>

	^ ExternalAddress null
]

{ #category : #'private - ffi' }
Winit30WakeupSignaller class >> primitiveGetVirtualMachineEventLoopReceiver [
	<primitive: 'primitiveGetEventLoopReceiver'>

	^ ExternalAddress null
]
