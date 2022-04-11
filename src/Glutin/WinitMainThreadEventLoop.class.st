Class {
	#name : #WinitMainThreadEventLoop,
	#superclass : #RustWindowingEventLoop,
	#traits : 'TWinit',
	#classTraits : 'TWinit classTrait',
	#instVars : [
		'isRunning',
		'waker'
	],
	#category : #'Glutin-Event loop'
}

{ #category : #'private - ffi' }
WinitMainThreadEventLoop class >> createPollingEventLoopWithSemaphoreSignaller: aCallbackFunction index: aSemaphoreIndex thunk: aThunkAddress receiverSignaller: aReceiverCallback thunk: aReceiverThunk [
	^ self ffiCall: #(void* winit_polling_event_loop_new_with_semaphore_and_main_events_signaller(
		void* aCallbackFunction,
		size_t aSemaphoreIndex,
		void* aThunkAddress,
		void* aReceiverCallback,
		void* aReceiverThunk))
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_polling_event_loop_drop(void** aHandle))
]

{ #category : #'instance creation' }
WinitMainThreadEventLoop class >> primitiveGetEventLoop [
	<primitive: 'primitiveGetEventLoop'>

	^ ExternalAddress null
]

{ #category : #'instance creation' }
WinitMainThreadEventLoop class >> primitiveGetEventLoopReceiver [
	<primitive: 'primitiveGetEventLoopReceiver'>

	^ ExternalAddress null
]

{ #category : #'instance creation' }
WinitMainThreadEventLoop class >> primitiveGetSemaphoreSignaller [
	<primitive: 'primitiveGetSemaphoreSignaller'>

	^ ExternalAddress null
]

{ #category : #'instance creation' }
WinitMainThreadEventLoop class >> withSemaphore: aSemaphoreIndex [

	^ self
		withSemaphoreSignaller: self primitiveGetSemaphoreSignaller
		index: aSemaphoreIndex
		receiverSignaller: self primitiveGetEventLoopReceiver
		thunk: self primitiveGetEventLoop
]

{ #category : #'instance creation' }
WinitMainThreadEventLoop class >> withSemaphoreSignaller: aCallbackFunction index: aSemaphoreIndex receiverSignaller: aReceiverCallback thunk: aReceiverThunk [
	^ self fromNativeHandle: (self
		createPollingEventLoopWithSemaphoreSignaller: aCallbackFunction
		index: aSemaphoreIndex
		thunk: ExternalAddress null
		receiverSignaller: aReceiverCallback
		thunk: aReceiverThunk)
]

{ #category : #'api - windows' }
WinitMainThreadEventLoop >> closeWindow: aWinitWindow [
	GlutinWindowsRegistry default unregisterWindow: aWinitWindow.
	aWinitWindow release
]

{ #category : #'api - windows' }
WinitMainThreadEventLoop >> createWindow: aWindowBuilder [
	| aBuilderCopy aWindow |
	
	self
		assert: [ self isNull not ]
		description: [ 'Can not create a window with invalid event loop' ].
	
	[ isRunning ] whileFalse: [ 100 milliseconds wait ].
	
	self
		assert: [ isRunning ]
		description: [ 'Can not create a window when event loop is not running' ].

	aBuilderCopy := aWindowBuilder copy.

	aWindow := ((WinitWindowReference fromHandle: (self primCreateWindow: aBuilderCopy) getHandle)
		eventLoop: self) autoRelease.

	aBuilderCopy nullify.

	aWindow isValid
		ifTrue: [
			aWindow autoRelease.
			aWindow eventLoop: self.
			aWindow title: aBuilderCopy title.
			
			GlutinWindowsRegistry default registerWindow: aWindow.
			
			^ aWindow ].
	
	self error: 'Failed to create a Winit window'
]

{ #category : #initialization }
WinitMainThreadEventLoop >> initialize [
	super initialize.

	isRunning := false.
	waker := self primCreateWaker
]

{ #category : #testing }
WinitMainThreadEventLoop >> isRunning [
	^ isRunning
]

{ #category : #testing }
WinitMainThreadEventLoop >> isWinit [
	^ true
]

{ #category : #running }
WinitMainThreadEventLoop >> poll: aBlock [
	<return: #Boolean>
	| anEvent |
	
	anEvent := (GlutinBaseEvent fromHandle: self primPoll getHandle).
	anEvent isNull
		ifTrue: [ ^ false ].
		
	[ aBlock cull: anEvent ] ensure: [ anEvent release ].
	^ true
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primCreateWaker [
	^ self ffiCall: #(void* winit_event_loop_waker_create(self))
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primCreateWindow: aWindowBuilder [
	^ self
		ffiCall: #(void* winit_polling_event_loop_create_window(self, WinitWindowBuilder aWindowBuilder))
		options: #(optEventLoop)
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primGetType [
	^ self ffiCall: #(WinitEventLoopType winit_polling_event_loop_get_type(self))
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primGetWakerCallback [
	^ self ffiCall: #(void* winit_event_loop_waker_function())
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primOnRedrawCall: anExternalFunction with: anExternalObject for: aWindowId [
	self ffiCall: #(void winit_polling_event_loop_add_redraw_listener(
		self,
		void* aWindowId,
		void* anExternalFunction,
		void* anExternalObject))
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primOnResizeCall: anExternalFunction with: anExternalObject for: aWindowId [
	self ffiCall: #(void winit_polling_event_loop_add_resize_listener(
		self,
		void* aWindowId,
		void* anExternalFunction,
		void* anExternalObject))
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primPoll [
	^ self ffiCall: #(void* winit_polling_event_loop_poll(self))
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primReleaseEvent: aGlutinBaseEvent [
	^ self ffiCall: #(void winit_event_drop(void* aGlutinBaseEvent))
]

{ #category : #'private - ffi' }
WinitMainThreadEventLoop >> primRun [
	^ self ffiCall: #(void winit_polling_event_loop_run(self)) options: #(optEventLoop optNonBlocking)
]

{ #category : #running }
WinitMainThreadEventLoop >> run [
	self isNull
		ifTrue: [ ^ self ].

	self isRunning
		ifTrue: [ ^ self ].
	
	Smalltalk vm isRunningInWorkerThread
		ifFalse: [ self error: 'Must be on a worker thread!' ].

	GtVirtualMachine instance
		eventLoopWaker: self waker
		function: self wakerCallback.

	"this will block when not on the Worker Thread!"
	self primRun.
	isRunning := true
]

{ #category : #'api - accessing' }
WinitMainThreadEventLoop >> type [
	<return: #WinitEventLoopType>
	
	^ self primGetType
]

{ #category : #'api - accessing' }
WinitMainThreadEventLoop >> waker [
	^ waker
]

{ #category : #'api - accessing' }
WinitMainThreadEventLoop >> wakerCallback [
	^ self primGetWakerCallback
]

{ #category : #'api - windows' }
WinitMainThreadEventLoop >> windowBuilder [
	^ WinitWindowBuilder new
]