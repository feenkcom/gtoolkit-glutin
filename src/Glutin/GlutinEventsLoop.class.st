Class {
	#name : #GlutinEventsLoop,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'callback',
		'status'
	],
	#category : #'Glutin-Events Fetcher'
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

{ #category : #'private - accessing' }
GlutinEventsLoop >> callback [
	^ callback
]

{ #category : #'private - enable / disable' }
GlutinEventsLoop >> cleanUp [
	"I am sent when an image starts with a fresh session"
	
	self runScript: 'cleanUp'.
	
	callback isValid: false.
	callback thunk free.
	status getHandle beNull.

	(Callback respondsTo: #glutinevaluateCallbackForContext:)
		ifFalse: [
			Callback class compile: 'glutin', (Callback class >> #evaluateCallbackForContext:) sourceCode.
			Callback class compile: 'evaluateCallbackForContext: callbackContext
				Callback class compile: ((Callback class >> #glutinevaluateCallbackForContext:) sourceCode copyReplaceAll: ''glutin'' with: '''').
				(Callback class >> #glutinevaluateCallbackForContext:) removeFromSystem.
				^ nil' ].

	(VMCallbackContext64 new respondsTo: #glutinwordResult:)
		ifFalse: [
		VMCallbackContext64 compile: 'glutin', (VMCallbackContext64 >> #wordResult:) sourceCode.
		VMCallbackContext64 compile: 'wordResult: aValue
			VMCallbackContext64 compile: ((VMCallbackContext64 >> #glutinwordResult:) sourceCode copyReplaceAll: ''glutin'' with: '''').
			(VMCallbackContext64 >> #glutinwordResult:) removeFromSystem.
		^ 1' ].
		
	Alien class compile: 'error: aString
		(Alien class >> #error:) removeFromSystem'.
	
	[ (GlutinEventsFetcher default instVarNamed: #fetcherProcess) terminate ] on: Error do: [  ].
	
	(Smalltalk os windowSystemName = 'null')
		ifTrue: [ GlutinEventsFetcher default installEventLoop ]
]

{ #category : #'private - enable / disable' }
GlutinEventsLoop >> disable [
	"disable the callbacks on glutin side. Events will not be sent anymore"
	
	(status isNotNil and: [ status isNull not ])
		ifTrue: [ status is_valid: false ]
]

{ #category : #'private - enable / disable' }
GlutinEventsLoop >> enable [	
	"enable the callbacks on glutin side. Events will be sent now"
	(status isNotNil and: [ status isNull not ])
		ifTrue: [ status is_valid: true ]
]

{ #category : #initialization }
GlutinEventsLoop >> initialize [
]

{ #category : #events }
GlutinEventsLoop >> isRunning [

	status
		ifNil: [ ^ false ].
		
	status isNull
		ifTrue: [ ^ false ].
		
	status is_valid
		ifFalse: [ ^ false ].
		
	^ status is_running
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primCallCallback: aCallback [
	^ self ffiCall: #(void glutin_events_loop_call_callback(GlutinEventsLoopCallbackWithStatus* aCallback))
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primGetPrimaryMonitor [
	^ self ffiCall: #(GlutinMonitorId glutin_events_loop_get_primary_monitor (GlutinEventsLoop self))
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primRunForever: aCallback [
	^ self ffiCall: #(void glutin_events_loop_run_forever(GlutinEventsLoop self, GlutinEventsLoopCallbackWithStatus* aCallback))
]

{ #category : #accessing }
GlutinEventsLoop >> primaryMonitor [
	<return: #GlutinMonitorId>
	| aMonitorId |
	
	aMonitorId := self primGetPrimaryMonitor.
	aMonitorId autoRelease.
	aMonitorId eventsLoop: self.
	
	^ aMonitorId
]

{ #category : #events }
GlutinEventsLoop >> run: aBlock [

	self isNull
		ifTrue: [ ^ self ].
		
	self
		"By design of Winit we must start an events loop only when there is at least one window"
		assert: [ GlutinWindowsRegistry default hasWindows ]
		description: [ 'Must have at least one window' ].

	callback := GlutinEventCallback on: [ :anAddress |
		| aControlFlow |
		aControlFlow := aBlock value: (GlutinBaseEvent fromHandle: anAddress).
		(aControlFlow isKindOf: GlutinControlFlow)
			ifFalse: [ aControlFlow := GlutinControlFlow poll ].
		aControlFlow ].
	
	status := GlutinEventsLoopCallbackWithStatus externalNew.
	status is_valid: true.
	status is_running: false.
	status callback: callback.

	self primRunForever: status
]

{ #category : #'private - enable / disable' }
GlutinEventsLoop >> runScript: aName [
	"Is sent when an image is about to close"
	| aCustomScript aMethodName |
	
	[
		aCustomScript := (Smalltalk image imageDirectory / aName, 'st') asFileReference.
		aCustomScript exists ifTrue: [
			NonInteractiveTranscript stdout show: '----------------------------------------------------------------'; cr.
			NonInteractiveTranscript stdout show: '--------------------------- S C R I P T ------------------------'; cr.
			NonInteractiveTranscript stdout show: '----------------------------------------------------------------'; cr.
			NonInteractiveTranscript stdout show: aCustomScript; cr.
			aMethodName := (#on, aName capitalized) asSymbol.
			self class compile: aCustomScript contents.
			(self respondsTo: aMethodName)
				ifTrue: [
					self perform: aMethodName.
					(self class >> aMethodName) removeFromSystem ] ]
	] on: Error do: [ :e | NonInteractiveTranscript stdout show: e; cr ]
]

{ #category : #'private - enable / disable' }
GlutinEventsLoop >> shutDown: isQuitting [
	isQuitting
		ifTrue: [ self wrapUp ]
		ifFalse: [ self disable ]
]

{ #category : #'private - enable / disable' }
GlutinEventsLoop >> startUp: isInANewSession [
	isInANewSession
		ifTrue: [ self cleanUp ]
		ifFalse: [ self enable ]
]

{ #category : #'private - accessing' }
GlutinEventsLoop >> status [
	^ status
]

{ #category : #'private - enable / disable' }
GlutinEventsLoop >> wrapUp [
	"Is sent when an image is about to close"

	self runScript: 'wrapUp'
]
