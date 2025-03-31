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
Winit30ApplicationHandle >> primPopEvent: windowEvent windowId: windowId eventType: eventType [
	^ self ffiCall: #(void* winit_application_handle_pop_event(
		self,
		size_t* windowId,
		void* eventType,
		void* windowEvent))
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> primReleaseWindowEvent: anEvent [
	self ffiCall: #(void winit_window_event_release(void* anEvent))
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> tryPollEvent: aBlock [
	<return: #Boolean>
	| windowIdPointer windowEventPointer eventTypePointer windowId eventType windowEvent eventPointer eventClass event |
	
	windowIdPointer := ExternalAddress newPointer.
	windowIdPointer platformSizeTAt: 1 put: 0.
	
	windowEventPointer := ExternalAddress newPointer.
	windowEventPointer pointerAtOffset: 0 put: ExternalAddress null.
	
	eventTypePointer := ExternalAddress newPointer.
	eventTypePointer unsignedLongAt: 1 put: WinitEventType Unknown value.
	
	eventPointer := self
		primPopEvent: windowEventPointer
		windowId: windowIdPointer
		eventType: eventTypePointer.
	
	windowId := windowIdPointer platformSizeTAt: 1.
	windowIdPointer free.
	
	windowEvent := windowEventPointer pointerAtOffset: 0.
	windowEventPointer free.
	
	eventType := WinitEventType fromInteger: (eventTypePointer unsignedLongAt: 1).
	eventTypePointer free.
	
	eventType = WinitEventType Unknown
		ifTrue: [ ^ false ].

	windowEvent isNull
		ifTrue: [ ^ false ].
	
	eventClass := RustWindowingBaseEvent eventMap at: eventType ifAbsent: [ GlutinUnknownEvent ].
	event := eventClass fromHandle: windowEvent.
	event isWindowEvent
		ifTrue: [ event windowId: windowId ].

	[ aBlock cull: event ]
		ensure: [
			event setHandle: nil.
			self primReleaseWindowEvent: eventPointer ].

	^ true
]

{ #category : #'as yet unclassified' }
Winit30ApplicationHandle >> type [
	^ WinitEventLoopType Unknown
]

{ #category : #'api - windows' }
Winit30ApplicationHandle >> windowBuilder [
	^ Winit30WindowBuilder new
]
