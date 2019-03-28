Class {
	#name : #GlutinEventsLoop,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#category : #Winit
}

{ #category : #'api - instantiation' }
GlutinEventsLoop class >> create [
	^ self primCreate autoRelease
]

{ #category : #'library path' }
GlutinEventsLoop class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'private - ffi' }
GlutinEventsLoop class >> primCreate [
	^ self ffiCall: #(#GlutinEventsLoop glutin_create_events_loop())
]

{ #category : #'private - ffi' }
GlutinEventsLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_events_loop(void* aHandle))
]

{ #category : #events }
GlutinEventsLoop >> pollEvents: aBlock [
	| aCallback baseEvent |

	self isNull
		ifTrue: [ ^ self ].
	
	baseEvent := GlutinBaseEvent new.
	aCallback := GlutinEventsLoopCallback on: [ aBlock value: baseEvent. true ].

	self primPollEvents: aCallback event: baseEvent
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primPollEvents: aCallback event: aGlutinEvent [
	^ self ffiCall: #(void glutin_events_loop_poll_events(
		#GlutinEventsLoop self,
		#GlutinBaseEvent *aGlutinEvent,
		#GlutinEventsLoopCallback aCallback))
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primRunForever: aCallback event: aGlutinEvent [
	^ self ffiCall: #(void glutin_events_loop_run_forever(
		#GlutinEventsLoop self,
		#GlutinBaseEvent *aGlutinEvent,
		#GlutinEventsLoopCallback aCallback))
]

{ #category : #events }
GlutinEventsLoop >> runForever: aBlock [
	| aCallback baseEvent |
	
	baseEvent := GlutinBaseEvent new.
	aCallback := GlutinEventsLoopCallback on: [ 
		| aResult |
		aResult := aBlock value: baseEvent.
		(aResult == true or: [ aResult == false ])
			ifTrue: [ aResult ]
			ifFalse: [ self error: 'Result must be a boolean'. false ] ].

	self primRunForever: aCallback event: baseEvent
]
