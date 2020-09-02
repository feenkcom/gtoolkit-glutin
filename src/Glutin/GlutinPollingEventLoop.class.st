Class {
	#name : #GlutinPollingEventLoop,
	#superclass : #GlutinExternalObject,
	#category : #'Glutin-Event loop'
}

{ #category : #'private - ffi' }
GlutinPollingEventLoop class >> primCreate [
	^ self ffiCall: #(void* glutin_polling_event_loop_new()) library: GlutinMainThreadLibrary
]

{ #category : #'private - ffi' }
GlutinPollingEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_polling_event_loop_drop(void** aHandle)) library: GlutinMainThreadLibrary
]

{ #category : #running }
GlutinPollingEventLoop >> poll [
	| anEvent |
	
	anEvent := (GlutinBaseEvent fromHandle: self primPoll).
	
	
]

{ #category : #running }
GlutinPollingEventLoop >> poll: aBlock [
	| anEvent |
	
	anEvent := (GlutinBaseEvent fromHandle: self primPoll).
	anEvent isNull
		ifTrue: [ ^ self ].
		
	[ aBlock cull: anEvent ] ensure: [ anEvent release ].
]

{ #category : #'private - ffi' }
GlutinPollingEventLoop >> primPoll [
	^ self ffiCall: #(void* glutin_polling_event_loop_poll(self))
]

{ #category : #'private - ffi' }
GlutinPollingEventLoop >> primReleaseEvent: aGlutinBaseEvent [
	^ self ffiCall: #(void glutin_event_drop(void* aGlutinBaseEvent)) 
]

{ #category : #'private - ffi' }
GlutinPollingEventLoop >> primRunReturn [
	^ self ffiCall: #(void glutin_polling_event_loop_run_return(self)) library: GlutinMainThreadLibrary
]

{ #category : #running }
GlutinPollingEventLoop >> run [
	self isNull
		ifTrue: [ ^ self ].
		
	self
		"By design of Winit we must start an events loop only when there is at least one window"
		assert: [ GlutinWindowsRegistry default hasWindows ]
		description: [ 'Must have at least one window' ].
		
	self primRunReturn
]
