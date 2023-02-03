Class {
	#name : #GlutinMainThreadEventLoop,
	#superclass : #RustWindowingEventLoop,
	#traits : 'TGlutin',
	#classTraits : 'TGlutin classTrait',
	#instVars : [
		'isRunning'
	],
	#category : #'Glutin-Event loop'
}

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop class >> createPollingEventLoopWithSemaphoreSignaller: aCallbackFunction index: aSemaphoreIndex thunk: aThunkAddress receiverSignaller: aReceiverCallback thunk: aReceiverThunk [
	^ self ffiCall: #(void* glutin_polling_event_loop_new_with_semaphore_and_main_events_signaller(
		void* aCallbackFunction,
		size_t aSemaphoreIndex,
		void* aThunkAddress,
		void* aReceiverCallback,
		void* aReceiverThunk))
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_polling_event_loop_drop(void* aHandle))
]

{ #category : #'instance creation' }
GlutinMainThreadEventLoop class >> primitiveGetEventLoop [
	<primitive: 'primitiveGetEventLoop'>

	^ ExternalAddress null
]

{ #category : #'instance creation' }
GlutinMainThreadEventLoop class >> primitiveGetEventLoopReceiver [
	<primitive: 'primitiveGetEventLoopReceiver'>

	^ ExternalAddress null
]

{ #category : #'instance creation' }
GlutinMainThreadEventLoop class >> primitiveGetSemaphoreSignaller [
	<primitive: 'primitiveGetSemaphoreSignaller'>

	^ ExternalAddress null
]

{ #category : #'instance creation' }
GlutinMainThreadEventLoop class >> withSemaphore: aSemaphoreIndex [

	^ self
		withSemaphoreSignaller: self primitiveGetSemaphoreSignaller
		index: aSemaphoreIndex
		receiverSignaller: self primitiveGetEventLoopReceiver
		thunk: self primitiveGetEventLoop
]

{ #category : #'instance creation' }
GlutinMainThreadEventLoop class >> withSemaphoreSignaller: aCallbackFunction index: aSemaphoreIndex receiverSignaller: aReceiverCallback thunk: aReceiverThunk [
	^ self fromNativeHandle: (self
		createPollingEventLoopWithSemaphoreSignaller: aCallbackFunction
		index: aSemaphoreIndex
		thunk: ExternalAddress null
		receiverSignaller: aReceiverCallback
		thunk: aReceiverThunk)
]

{ #category : #'api - windows' }
GlutinMainThreadEventLoop >> createWindow: aWindowBuilder [
	"I choose a context builder so that context creation works"
	| aBuilderCopy aContextBuilder aWindowedContextHandle aWindowedContext |
	
	self
		assert: [ self isNull not ]
		description: [ 'Can not create a window with invalid event loop' ].
	
	[ isRunning ] whileFalse: [ 100 milliSeconds wait ].
	
	self
		assert: [ isRunning ]
		description: [ 'Can not create a window when event loop is not running' ].

	aBuilderCopy := aWindowBuilder copy.

	aContextBuilder := (GlutinContextProfile new vsync: false) asContextBuilder.

	aWindowedContextHandle := self primCreateWindow: aBuilderCopy contextBuilder: aContextBuilder.
	aWindowedContext := GlutinWindowedContext fromNativeHandle: aWindowedContextHandle.

	aBuilderCopy nullify.
	aContextBuilder nullify.

	aWindowedContext isValid
		ifTrue: [
			NonInteractiveTranscript stdout
				nextPutAll: '[Glutin] Profile #0 worked';
				cr.
			aWindowedContext autoRelease.
			aWindowedContext eventLoop: self.
			aWindowedContext title: aBuilderCopy title.
			
			GlutinWindowsRegistry default registerWindow: aWindowedContext.
			
			^ aWindowedContext ].
	
	self error: 'Could not find a suitable OpenGL profile for this system'
]

{ #category : #initialization }
GlutinMainThreadEventLoop >> initialize [
	super initialize.
	
	isRunning := false
]

{ #category : #testing }
GlutinMainThreadEventLoop >> isGlutin [
	^ true
]

{ #category : #running }
GlutinMainThreadEventLoop >> poll: aBlock [
	<return: #Boolean>
	| anEvent |
	
	anEvent := (RustWindowingBaseEvent fromHandle: self primPoll getHandle).
	anEvent isNull
		ifTrue: [ ^ false ].
		
	[ aBlock cull: anEvent ] ensure: [ anEvent release ].
	^ true
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop >> primCreateWindow: aWindowBuilder contextBuilder: aContextBuilder [
	^ self ffiCall: #(void* winit_polling_event_loop_new(
			self,
			GlutinWindowBuilder aWindowBuilder,
			GlutinContextBuilder aContextBuilder)) options: #(optEventLoop)
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop >> primPoll [
	^ self ffiCall: #(void* glutin_polling_event_loop_poll(self))
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop >> primReleaseEvent: aGlutinBaseEvent [
	^ self ffiCall: #(void glutin_event_drop(void* aGlutinBaseEvent))
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop >> primRun [
	^ self ffiCall: #(void glutin_polling_event_loop_run(self)) options: #(optEventLoop optNonBlocking)
]

{ #category : #running }
GlutinMainThreadEventLoop >> run [
	self isNull
		ifTrue: [ ^ self ].
	
	Smalltalk vm isRunningInWorkerThread
		ifFalse: [ self error: 'Must be on a worker thread!' ].

	"this will block when not on the Worker Thread!"
	self primRun.
	isRunning := true
]

{ #category : #'api - windows' }
GlutinMainThreadEventLoop >> windowBuilder [
	^ GlutinWindowBuilder new
]
