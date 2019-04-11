Class {
	#name : #GlutinEventsLoop,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'baseEvent',
		'eventsQueue',
		'pollCallback'
	],
	#category : #Glutin
}

{ #category : #'api - instantiation' }
GlutinEventsLoop class >> create [
	^ self primCreate
		initialize;
		autoRelease
]

{ #category : #'library path' }
GlutinEventsLoop class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'instance creation' }
GlutinEventsLoop class >> new [
	^ self create
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

{ #category : #initialization }
GlutinEventsLoop >> initialize [
	baseEvent := GlutinBaseEvent new.
	eventsQueue := OrderedCollection new.
	pollCallback := GlutinEventsLoopCallback on: [ eventsQueue add: baseEvent deepCopy. true ]
]

{ #category : #events }
GlutinEventsLoop >> pollEvents: aBlock [
	self isNull
		ifTrue: [ ^ self ].

	eventsQueue removeAll.
	self primPollEvents: pollCallback event: baseEvent.
	eventsQueue do: [ :anEvent | aBlock value: anEvent ].
	eventsQueue removeAll
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primPollEvents: aCallback event: aGlutinEvent [
	^ self ffiCall: #(void glutin_events_loop_poll_events(
		#GlutinEventsLoop self,
		#GlutinBaseEvent *aGlutinEvent,
		#GlutinEventsLoopCallback aCallback))
]
