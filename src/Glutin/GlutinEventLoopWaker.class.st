Class {
	#name : #GlutinEventLoopWaker,
	#superclass : #GlutinExternalObject,
	#instVars : [
		'eventLoop'
	],
	#category : #'Glutin-Event loop'
}

{ #category : #'instance creation' }
GlutinEventLoopWaker class >> for: aGlutinEventLoop [
	^ (self fromNativeHandle: (self primCreate: aGlutinEventLoop))
		eventLoop: aGlutinEventLoop
]

{ #category : #'private - ffi' }
GlutinEventLoopWaker class >> primCreate: aGlutinEventLoop [
	^ self ffiCall: #(void* glutin_event_loop_waker_create(GlutinEventLoop aGlutinEventLoop))
]

{ #category : #'private - ffi' }
GlutinEventLoopWaker class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_event_loop_waker_drop(void** aHandle))
]

{ #category : #accessing }
GlutinEventLoopWaker >> eventLoop [
	^ eventLoop
]

{ #category : #accessing }
GlutinEventLoopWaker >> eventLoop: anObject [
	eventLoop := anObject
]

{ #category : #accessing }
GlutinEventLoopWaker >> function [
	^ self primFunction
]

{ #category : #'private - ffi' }
GlutinEventLoopWaker >> primFunction [
	^ self ffiCall: #(void* glutin_event_loop_waker_function())
]
