Class {
	#name : #Winit30ApplicationHandle,
	#superclass : #RustWindowingEventLoop,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#instVars : [
		'isRunning'
	],
	#category : #'Winit-External'
}

{ #category : #'private - ffi' }
Winit30ApplicationHandle class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_application_handle_release(void* aHandle))
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> beRunning [
	isRunning := true
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> createWindow: aWindowBuilder [
	| windowAttributes semaphore semaphoreIndex semaphoreSignaller windowPointer window |
	
	self
		assert: [ self isNull not ]
		description: [ 'Can not create a window with invalid event loop' ].
	
	[ isRunning ] whileFalse: [ 100 milliSeconds wait ].
	
	self
		assert: [ isRunning ]
		description: [ 'Can not create a window when event loop is not running' ].

	windowAttributes := aWindowBuilder copy.

	semaphore := Semaphore new.
	semaphoreIndex := Smalltalk registerExternalObject: semaphore.
	semaphoreSignaller := Winit30SemaphoreSignaller forSemaphoreIndex: semaphoreIndex.
	
	windowPointer := ExternalAddress newPointer.
	
	self
		primCreateWindow: windowAttributes
		semaphoreSignaller: semaphoreSignaller
		windowPointer: windowPointer.

	semaphore wait.
	windowAttributes release.
	semaphoreSignaller release.

	Smalltalk unregisterExternalObject: semaphore.
	
	window := Winit30Window fromNativeHandle: (windowPointer pointerAtOffset: 0).
	windowPointer free.

	window isValid
		ifTrue: [
			GlutinWindowsRegistry default registerWindow: window.
			
			^ window ].

	self error: 'Failed to create a Winit window'
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> initialize [
	super initialize.
	
	isRunning := false
]

{ #category : #testing }
Winit30ApplicationHandle >> isWinit [
	^ true
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> primCreateWindow: windowAttributes semaphoreSignaller: semaphoreSignaller windowPointer: windowPointer [
	^ self ffiCall: #(void winit_application_handle_create_window(
		self,
		void* windowAttributes,
		void* semaphoreSignaller,
		void* windowPointer))
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> primGetType [
	^ self ffiCall: #(WinitEventLoopType winit_application_handle_release_get_type(self))
]

{ #category : #'private - ffi' }
Winit30ApplicationHandle >> primReleaseWindowEvent: anEvent [
	self ffiCall: #(void winit_window_event_release(void* anEvent))
]

{ #category : #'private - ffi' }
Winit30ApplicationHandle >> primTryPopEvent [
	^ self ffiCall: #(void* winit_application_handle_try_pop_event(self))
]

{ #category : #'private - ffi' }
Winit30ApplicationHandle >> primWindowEventGetEventPtr: anEventHandle [
	^ self ffiCall: #(void* winit_window_event_get_event_ptr(void* anEventHandle))
]

{ #category : #'private - ffi' }
Winit30ApplicationHandle >> primWindowEventGetType: anEventHandle [
	^ self ffiCall: #(uint32 winit_window_event_get_type(void* anEventHandle))
]

{ #category : #'private - ffi' }
Winit30ApplicationHandle >> primWindowEventGetWindowId: anEventHandle [
	^ self ffiCall: #(size_t winit_window_event_get_window_id(void* anEventHandle))
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> tryPollEvent: aBlock [
	<return: #Boolean>
	| outerHandle eventType windowId eventPtr eventClass event |

	outerHandle := self primTryPopEvent.
	outerHandle isNull
		ifTrue: [ ^ false ].

	eventType := WinitEventType fromInteger: (self primWindowEventGetType: outerHandle).
	eventType = WinitEventType Unknown
		ifTrue: [
			self primReleaseWindowEvent: outerHandle.
			^ false ].

	windowId := self primWindowEventGetWindowId: outerHandle.
	eventPtr := self primWindowEventGetEventPtr: outerHandle.

	eventClass := RustWindowingBaseEvent eventMap at: eventType ifAbsent: [ GlutinUnknownEvent ].

	event := eventClass fromHandle: eventPtr.
	event isWindowEvent
		ifTrue: [ event windowId: windowId ].
	aBlock cull: event.

	^ true
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> type [
	<return: #WinitEventLoopType>

	^ self primGetType
]

{ #category : #'api - windows' }
Winit30ApplicationHandle >> windowBuilder [
	^ Winit30WindowBuilder new
]
