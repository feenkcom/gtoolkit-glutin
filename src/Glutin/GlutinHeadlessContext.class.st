Class {
	#name : #GlutinHeadlessContext,
	#superclass : #GlutinContext,
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
GlutinHeadlessContext class >> primCreate: anEventsLoop contextBuilder: aContextBuilder [
	^ self ffiCall: #(void* glutin_create_headless_context(
			#GlutinEventLoop anEventsLoop,
			#GlutinContextBuilder aContextBuilder))
]

{ #category : #'private - ffi' }
GlutinHeadlessContext class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_destroy_context(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinHeadlessContext >> primGetProcAddress: aGtBoxerString [
	^ self ffiCall: #(void* glutin_context_get_proc_address(self, GtBoxerString aGtBoxerString))
]

{ #category : #'private - ffi' }
GlutinHeadlessContext >> primIsCurrent [
	^ self ffiCall: #(bool glutin_context_is_current(self))
]

{ #category : #'private - ffi' }
GlutinHeadlessContext >> primMakeCurrent [
	^ self ffiCall: #(void glutin_context_make_current(self))
]
