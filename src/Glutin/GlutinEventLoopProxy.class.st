Class {
	#name : #GlutinEventLoopProxy,
	#superclass : #GlutinExternalObject,
	#category : #'Glutin-Event fetcher'
}

{ #category : #'private - ffi' }
GlutinEventLoopProxy class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_events_loop_drop_proxy(void** aHandle))
]
