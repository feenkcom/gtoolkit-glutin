Class {
	#name : #GlutinMainThreadEventLoop,
	#superclass : #GlutinExternalObject,
	#category : #'Glutin-GTookitVM-Event fetcher'
}

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop class >> createPollingEventLoopWithSemaphoreSignaller: aCallbackFunction index: aSemaphoreIndex thunk: aThunkAddress receiverSignaller: aReceiverCallback thunk: aReceiverThunk [
	^ self ffiCall: #(void* glutin_polling_event_loop_new_with_semaphore_and_main_events_signaller(
		void* aCallbackFunction,
		size_t aSemaphoreIndex,
		void* aThunkAddress,
		void* aReceiverCallback,
		void* aReceiverThunk)) library: GlutinSameThreadLibrary
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop class >> primCreate [
	^ self ffiCall: #(void* glutin_polling_event_loop_new()) library: GlutinMainThreadAsyncLibrary
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_polling_event_loop_drop(void** aHandle)) library: GlutinMainThreadAsyncLibrary
]

{ #category : #'instance creation' }
GlutinMainThreadEventLoop class >> withSemaphore: aSemaphoreIndex [
	| aSemaphoreSignaller aReceiverSignaller |

	aSemaphoreSignaller := GToolkitVM current semaphoreSignaller.
	aReceiverSignaller := GToolkitVM current receiverSignaller.

	^ self
		withSemaphoreSignaller: aSemaphoreSignaller getHandle
		index: aSemaphoreIndex
		thunk: aSemaphoreSignaller thunk
		receiverSignaller: aReceiverSignaller getHandle
		thunk: aReceiverSignaller thunk
]

{ #category : #'instance creation' }
GlutinMainThreadEventLoop class >> withSemaphoreSignaller: aCallbackFunction index: aSemaphoreIndex thunk: aThunkAddress receiverSignaller: aReceiverCallback thunk: aReceiverThunk [
	^ self fromNativeHandle: (self
		createPollingEventLoopWithSemaphoreSignaller: aCallbackFunction
		index: aSemaphoreIndex
		thunk: aThunkAddress
		receiverSignaller: aReceiverCallback
		thunk: aReceiverThunk)
]

{ #category : #running }
GlutinMainThreadEventLoop >> poll: aBlock [
	<return: #Boolean>
	| anEvent |
	
	anEvent := (GlutinBaseEvent fromHandle: self primPoll getHandle).
	anEvent isNull
		ifTrue: [ ^ false ].
		
	[ aBlock cull: anEvent ] ensure: [ anEvent release ].
	^ true
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop >> primPoll [
	^ self ffiCall: #(void* glutin_polling_event_loop_poll(self)) library: GlutinSameThreadLibrary
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop >> primReleaseEvent: aGlutinBaseEvent [
	^ self ffiCall: #(void glutin_event_drop(void* aGlutinBaseEvent)) library: GlutinSameThreadLibrary
]

{ #category : #'private - ffi' }
GlutinMainThreadEventLoop >> primRun [
	^ self ffiCall: #(void glutin_polling_event_loop_run(self)) library: GlutinMainThreadNonBlockingLibrary
]

{ #category : #running }
GlutinMainThreadEventLoop >> run [
	self isNull
		ifTrue: [ ^ self ].
	
	GToolkitVM current isOnWorkerThread
		ifFalse: [ self error: 'Must be on a worker thread!' ].
	
	"this will block when not on the Worker Thread!"
	self primRun
]
