Class {
	#name : #Winit30Application,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#instVars : [
		'isRunning'
	],
	#category : #'Winit-External'
}

{ #category : #'private - ffi' }
Winit30Application class >> primGetWakerCallback [
	^ self ffiCall: #(void* winit_application_waker_function())
]

{ #category : #'private - ffi' }
Winit30Application class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_application_release(void* aHandle))
]

{ #category : #'as yet unclassified' }
Winit30Application >> initialize [
	super initialize.

	isRunning := false.
	applicationHandle := nil.
]

{ #category : #'private - ffi' }
Winit30Application >> primRun [
	self
		ffiCall: #(void winit_application_run(self))
		options: #(optEventLoop optNonBlocking)
]

{ #category : #running }
Winit30Application >> run [
	self isNull
		ifTrue: [ ^ self ].

	isRunning
		ifTrue: [ ^ self ].
	
	Smalltalk vm isRunningInWorkerThread
		ifFalse: [ self error: 'Must be on a worker thread!' ].

	"this will block when not on the Worker Thread!"
	self primRun.
	isRunning := true
]
