Class {
	#name : #WinitCallbackEventLoop,
	#superclass : #RustWindowingEventLoop,
	#traits : 'TWinit',
	#classTraits : 'TWinit classTrait',
	#category : #'Glutin-Event loop'
}

{ #category : #'private - ffi' }
WinitCallbackEventLoop class >> primCreate [
	^ self ffiCall: #(void* winit_event_loop_new())
]

{ #category : #'private - ffi' }
WinitCallbackEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_event_loop_drop(void** aHandle))
]

{ #category : #'api - windows' }
WinitCallbackEventLoop >> closeWindow: aWinitWindow [
	GlutinWindowsRegistry default unregisterWindow: aWinitWindow.
	aWinitWindow release
]

{ #category : #'api - windows' }
WinitCallbackEventLoop >> createWindow: aWindowBuilder [
	"I choose a context builder so that context creation works"
	| aBuilderCopy aWindow |
	
	self
		assert: [ self isNull not ]
		description: [ 'Can not create a window with invalid event loop' ].

	aBuilderCopy := aWindowBuilder copy.

	aWindow := WinitWindow fromNativeHandle: (self primCreateWindow: aBuilderCopy).

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

{ #category : #testing }
WinitCallbackEventLoop >> isWinit [
	^ true
]

{ #category : #'private - ffi' }
WinitCallbackEventLoop >> primCreateWindow: aWindowBuilder [
	^ self ffiCall: #(void* winit_create_window(self, WinitWindowBuilder aWindowBuilder))
]

{ #category : #'private - ffi' }
WinitCallbackEventLoop >> primGetType [
	^ self ffiCall: #(WinitEventLoopType winit_event_loop_get_type(self))
]

{ #category : #'private - ffi' }
WinitCallbackEventLoop >> primRunReturn: aCallback [
	^ self ffiCall: #(void winit_event_loop_run_return(self, GlutinEventCallback aCallback))
]

{ #category : #'api - events' }
WinitCallbackEventLoop >> run: aBlock [
	| aCallback |
	self isNull
		ifTrue: [ ^ self ].
		
	self
		"By design of Winit we must start an events loop only when there is at least one window"
		assert: [ GlutinWindowsRegistry default hasWindows ]
		description: [ 'Must have at least one window' ].
	
	"the callback must overlive an event loop"
	aCallback := GlutinEventCallback on: [ :anEventAddress |
		| aControlFlow |
		
		aControlFlow := aBlock cull: (RustWindowingBaseEvent fromHandle: anEventAddress) cull: self.
		(aControlFlow isKindOf: WinitControlFlow)
			ifFalse: [ aControlFlow := WinitControlFlow poll ].
		aControlFlow ].

	"the next call will block the current thread and will return only when the callback
	returns ==GlutinControlFlow exit=="
	self primRunReturn: aCallback
]

{ #category : #accessing }
WinitCallbackEventLoop >> type [
	<return: #WinitEventLoopType>
	
	^ self primGetType
]

{ #category : #'api - windows' }
WinitCallbackEventLoop >> windowBuilder [
	^ WinitWindowBuilder new
]
