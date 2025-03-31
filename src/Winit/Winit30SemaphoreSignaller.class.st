Class {
	#name : #Winit30SemaphoreSignaller,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-External'
}

{ #category : #'instance creation' }
Winit30SemaphoreSignaller class >> forSemaphoreIndex: aSemaphoreIndex [
	| aSemaphoreSignaller |
	
	aSemaphoreSignaller  := self primitiveGetSemaphoreSignaller.
	aSemaphoreSignaller isNull
		ifTrue: [ self error: 'Primitive is missing' ].
		
	^ self fromNativeHandle: (self
		primCreateCallback: aSemaphoreSignaller
		semaphoreIndex: aSemaphoreIndex
		thunk: ExternalAddress null)
]

{ #category : #'private - ffi' }
Winit30SemaphoreSignaller class >> primCreateCallback: aFunction semaphoreIndex: aSemaphoreIndex thunk: aSemaphoreSignallerThunk [
	^ self ffiCall: #(void* winit_semaphore_signaller_new(
		void* aFunction,
		size_t aSemaphoreIndex,
		void* aSemaphoreSignallerThunk))
]

{ #category : #'private - ffi' }
Winit30SemaphoreSignaller class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_semaphore_signaller_release(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30SemaphoreSignaller class >> primitiveGetSemaphoreSignaller [
	<primitive: 'primitiveGetSemaphoreSignaller'>

	^ ExternalAddress null
]
