Class {
	#name : #GlutinEventLoop,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'callback',
		'status'
	],
	#category : #'Glutin-Event Loop'
}

{ #category : #'api - instantiation' }
GlutinEventLoop class >> create [
	^ self primCreate
		initialize;
		autoRelease
]

{ #category : #'library path' }
GlutinEventLoop class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'instance creation' }
GlutinEventLoop class >> new [
	^ self create
]

{ #category : #'private - ffi' }
GlutinEventLoop class >> primCreate [
	^ self ffiCall: #(#GlutinEventLoop glutin_create_events_loop())
]

{ #category : #'private - ffi' }
GlutinEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_events_loop(void* aHandle))
]

{ #category : #'private - accessing' }
GlutinEventLoop >> callback [
	^ callback
]

{ #category : #'private - enable / disable' }
GlutinEventLoop >> cleanUp [
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

{ #category : #'api - windows' }
GlutinEventLoop >> createWindow: aWindowBuilder context: aContextBuilder [
	| aWindowedContext |
	
	aWindowedContext := GlutinWindowedContext
		primCreate: self
		windowBuilder: aWindowBuilder
		contextBuilder: aContextBuilder.

	aWindowedContext autoRelease.
	aWindowedContext eventsLoop: self.
	aWindowedContext title: aWindowBuilder title.
	
	GlutinWindowsRegistry default registerWindow: aWindowedContext.

	^ aWindowedContext
]

{ #category : #'private - enable / disable' }
GlutinEventLoop >> disable [
	"disable the callbacks on glutin side. Events will not be sent anymore"
	
	(status isNotNil and: [ status isNull not ])
		ifTrue: [ status is_valid: false ]
]

{ #category : #'private - enable / disable' }
GlutinEventLoop >> enable [	
	"enable the callbacks on glutin side. Events will be sent now"
	(status isNotNil and: [ status isNull not ])
		ifTrue: [ status is_valid: true ]
]

{ #category : #initialization }
GlutinEventLoop >> initialize [
]

{ #category : #'api - events' }
GlutinEventLoop >> isRunning [

	status
		ifNil: [ ^ false ].
		
	status isNull
		ifTrue: [ ^ false ].
		
	status is_valid
		ifFalse: [ ^ false ].
		
	^ status is_running
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primGetPrimaryMonitor [
	^ self ffiCall: #(GlutinMonitorId glutin_events_loop_get_primary_monitor (#GlutinEventLoop self))
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primRunForever: aCallback [
	^ self ffiCall: #(void glutin_events_loop_run_forever(#GlutinEventLoop self, #GlutinEventLoopCallbackWithStatus* aCallback))
]

{ #category : #accessing }
GlutinEventLoop >> primaryMonitor [
	<return: #GlutinMonitorId>
	| aMonitorId |
	
	aMonitorId := self primGetPrimaryMonitor.
	aMonitorId autoRelease.
	aMonitorId eventsLoop: self.
	
	^ aMonitorId
]

{ #category : #'api - events' }
GlutinEventLoop >> run: aBlock [

	self isNull
		ifTrue: [ ^ self ].
		
	self
		"By design of Winit we must start an events loop only when there is at least one window"
		assert: [ GlutinWindowsRegistry default hasWindows ]
		description: [ 'Must have at least one window' ].

	callback := GlutinEventCallback on: [ :anEventAddress :anEventLoopWindowTargetAddress |
		| aControlFlow |
	
		self getHandle setHandle: anEventLoopWindowTargetAddress.
		aControlFlow := aBlock cull: (GlutinBaseEvent fromHandle: anEventAddress) cull: self.
		(aControlFlow isKindOf: GlutinControlFlow)
			ifFalse: [ aControlFlow := GlutinControlFlow poll ].
		aControlFlow ].
	
	status := GlutinEventLoopCallbackWithStatus externalNew.
	status is_valid: true.
	status is_running: false.
	status callback: callback.

	self primRunForever: status
]

{ #category : #'private - enable / disable' }
GlutinEventLoop >> runScript: aName [
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
GlutinEventLoop >> shutDown: isQuitting [
	isQuitting
		ifTrue: [ self wrapUp ]
		ifFalse: [ self disable ]
]

{ #category : #'private - enable / disable' }
GlutinEventLoop >> startUp: isInANewSession [
	isInANewSession
		ifTrue: [ self cleanUp ]
		ifFalse: [ self enable ]
]

{ #category : #'private - accessing' }
GlutinEventLoop >> status [
	^ status
]

{ #category : #'private - enable / disable' }
GlutinEventLoop >> wrapUp [
	"Is sent when an image is about to close"

	self runScript: 'wrapUp'
]
