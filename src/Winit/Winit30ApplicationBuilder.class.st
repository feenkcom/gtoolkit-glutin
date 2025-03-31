Class {
	#name : #Winit30ApplicationBuilder,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-External'
}

{ #category : #'private - ffi' }
Winit30ApplicationBuilder class >> primCreate [
	^ self ffiCall: #(void* winit_application_builder_new())
]

{ #category : #'private - ffi' }
Winit30ApplicationBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_application_builder_release(void* aHandle))
]

{ #category : #accessing }
Winit30ApplicationBuilder >> addWakeupSignaller: aWakeupSignaller [
	self primAddWakeupSignaller: aWakeupSignaller.
	aWakeupSignaller release
]

{ #category : #accessing }
Winit30ApplicationBuilder >> buildAndDo: aBlock [
	| anApplicationPointer anApplicationHandlePointer anApplication anApplicationHandle |
	
	anApplicationPointer := ExternalAddress newPointer.
	anApplicationHandlePointer := ExternalAddress newPointer.
	
	self primBuildApplication: anApplicationPointer handle: anApplicationHandlePointer.
	self release.
	
	anApplication := Winit30Application fromNativeHandle: (anApplicationPointer pointerAtOffset: 0).
	anApplicationHandle := Winit30ApplicationHandle fromNativeHandle: (anApplicationHandlePointer pointerAtOffset: 0).
	
	anApplicationPointer free.
	anApplicationHandlePointer free.
	
	aBlock value: anApplication value: anApplicationHandle
]

{ #category : #'private - ffi' }
Winit30ApplicationBuilder >> primAddWakeupSignaller: aWakeupSignaller [
	self ffiCall: #(void winit_application_builder_add_wakeup_signaller(self, void* aWakeupSignaller))
]

{ #category : #'private - ffi' }
Winit30ApplicationBuilder >> primBuildApplication: aBuiltApplication handle: aBuiltApplicationHandle [
	self
		ffiCall: #(void winit_application_builder_build(self, void* aBuiltApplication, void* aBuiltApplicationHandle))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
Winit30ApplicationBuilder >> primSetSemaphoreSignaller: aSemaphoreSignaller [
	self ffiCall: #(void winit_application_builder_set_semaphore_signaller(self, void* aSemaphoreSignaller))
]

{ #category : #accessing }
Winit30ApplicationBuilder >> setSemaphoreSignaller: aSemaphoreSignaller [
	self primSetSemaphoreSignaller: aSemaphoreSignaller.
	aSemaphoreSignaller release
]
