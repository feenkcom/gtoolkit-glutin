Class {
	#name : #WinitEventLoop,
	#superclass : #WinitExternalObject,
	#category : #'Winit-Event Loop'
}

{ #category : #'private - ffi' }
WinitEventLoop class >> primCreate [
	^ self ffiCall: #(#void* winit_event_loop_new())
]

{ #category : #'private - ffi' }
WinitEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_event_loop_drop(void** aHandle))
]

{ #category : #'api - windows' }
WinitEventLoop >> closeWindow: aWindow [
	WinitWindowsRegistry default unregisterWindow: aWindow.
	aWindow release
]

{ #category : #'api - windows' }
WinitEventLoop >> createWindow: aWindowBuilder [
	"I choose a context builder so that context creation works"
	| aWindow |
	
	self
		assert: [ self isNull not ]
		description: [ 'Can not create a window with invalid event loop' ].
		
	aWindow := WinitWindow fromNativeHandle: (self primCreateWindow: aWindowBuilder).
	WinitWindowsRegistry default registerWindow: aWindow.
	
	^ aWindow
]

{ #category : #'private - ffi' }
WinitEventLoop >> primCreateWindow: aWindowBuilder [
	^ self ffiCall: #(void* winit_create_window(self, WinitWindowBuilder aWindowBuilder))
]

{ #category : #'private - ffi' }
WinitEventLoop >> primGetPrimaryMonitor [
	^ self ffiCall: #(void* winit_event_loop_get_primary_monitor (self))
]

{ #category : #'private - ffi' }
WinitEventLoop >> primGetType [
	^ self ffiCall: #(WinitEventLoopType winit_event_loop_get_type (self))
]

{ #category : #'private - ffi' }
WinitEventLoop >> primRunReturn: aCallback [
	^ self ffiCall: #(void winit_event_loop_run_return(self, WinitEventCallback aCallback))
]

{ #category : #accessing }
WinitEventLoop >> primaryMonitor [
	<return: #WinitMonitorId>
	| aMonitorId |
	
	aMonitorId := WinitMonitorId fromNativeHandle: self primGetPrimaryMonitor.
	aMonitorId eventLoop: self.

	^ aMonitorId
]

{ #category : #'api - events' }
WinitEventLoop >> run: aBlock [
	| aCallback |
	self isNull
		ifTrue: [ ^ self ].

	self
		"By design of Winit we must start an events loop only when there is at least one window"
		assert: [ WinitWindowsRegistry default hasWindows ]
		description: [ 'Must have at least one window' ].
	
	"the callback must overlive an event loop"
	aCallback := WinitEventCallback on: [ :anEventAddress |
		| aControlFlow |
		
		aControlFlow := aBlock cull: (WinitBaseEvent fromHandle: anEventAddress) cull: self.
		(aControlFlow isKindOf: WinitControlFlow)
			ifFalse: [ aControlFlow := WinitControlFlow poll ].
		aControlFlow ].
	
	"the next call will block the current thread and will return only when the callback
	returns ==WinitControlFlow exit=="
	self primRunReturn: aCallback
]

{ #category : #accessing }
WinitEventLoop >> type [
	<return: #WinitEventLoopType>
	
	^ self primGetType
]
