Class {
	#name : #WinitEventLoopWaker,
	#superclass : #WinitExternalObject,
	#instVars : [
		'eventLoop'
	],
	#category : #'Winit-Event Loop'
}

{ #category : #'instance creation' }
WinitEventLoopWaker class >> for: aGlutinEventLoop [
	^ (self fromNativeHandle: (self primCreate: aGlutinEventLoop))
		eventLoop: aGlutinEventLoop
]

{ #category : #'private - ffi' }
WinitEventLoopWaker class >> primCreate: aGlutinEventLoop [
	^ self ffiCall: #(void* glutin_event_loop_waker_create(GlutinEventLoop aGlutinEventLoop))
]

{ #category : #'private - ffi' }
WinitEventLoopWaker class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_event_loop_waker_drop(void** aHandle))
]

{ #category : #accessing }
WinitEventLoopWaker >> eventLoop [
	^ eventLoop
]

{ #category : #accessing }
WinitEventLoopWaker >> eventLoop: anObject [
	eventLoop := anObject
]

{ #category : #accessing }
WinitEventLoopWaker >> function [
	^ self primFunction
]

{ #category : #'private - ffi' }
WinitEventLoopWaker >> primFunction [
	^ self ffiCall: #(void* winit_event_loop_waker_function())
]
