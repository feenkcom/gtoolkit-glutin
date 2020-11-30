Class {
	#name : #GlutinPollingEventLoop,
	#superclass : #GlutinExternalObject,
	#category : #'Glutin-Event loop'
}

{ #category : #'private - ffi' }
GlutinPollingEventLoop class >> primCreate [
	^ self ffiCall: #(void* glutin_polling_event_loop_new())
]

{ #category : #'private - ffi' }
GlutinPollingEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_polling_event_loop_drop(void** aHandle))
]

{ #category : #running }
GlutinPollingEventLoop >> poll: aBlock [
	<return: #Boolean>
	| anEvent |
	
	anEvent := (GlutinBaseEvent fromHandle: self primPoll).
	anEvent isNull
		ifTrue: [ ^ false ].
		
	[ aBlock cull: anEvent ] ensure: [ anEvent release ].
	^ true
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
GlutinPollingEventLoop >> primRunReturn: aGlutinEventLoop [
	^ self ffiCall: #(void glutin_polling_event_loop_run_return(self, GlutinEventLoop aGlutinEventLoop))
]

{ #category : #running }
GlutinPollingEventLoop >> run: aGlutinEventLoop [
	self isNull
		ifTrue: [ ^ self ].
		
	self primRunReturn: aGlutinEventLoop
]
