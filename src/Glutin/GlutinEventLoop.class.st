Class {
	#name : #GlutinEventLoop,
	#superclass : #GlutinExternalObject,
	#traits : 'TGlutinEventLoop',
	#classTraits : 'TGlutinEventLoop classTrait',
	#instVars : [
		'headlessContext'
	],
	#category : #'Glutin-Event loop'
}

{ #category : #'private - ffi' }
GlutinEventLoop class >> primCreate [
	^ self ffiCall: #(#GlutinEventLoop glutin_create_events_loop())
]

{ #category : #'private - ffi' }
GlutinEventLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_events_loop(void** aHandle))
]

{ #category : #'api - windows' }
GlutinEventLoop >> closeWindow: aWindowedContext [
	GlutinWindowsRegistry default unregisterWindow: aWindowedContext.
	aWindowedContext release
]

{ #category : #'api - windows' }
GlutinEventLoop >> createHeadless [
	"Create a headless context"

	^ self createHeadlessWithSharing: true
]

{ #category : #'api - windows' }
GlutinEventLoop >> createHeadlessWithSharing: aBoolean [
	"Create a headless context"
	| aSharedHeadlessContext |

	aBoolean
		ifTrue: [ aSharedHeadlessContext := self headlessContext ].

	GlutinContextBuilder profilesDo: [ :eachProfile :anIndex |		
		(self tryHeadlessContext: eachProfile asContextBuilder)
			ifTrue: [
				| aHeadlessContext aContextBuilder |
				
				aContextBuilder := eachProfile asContextBuilder.			
				aBoolean
					ifTrue: [ aContextBuilder withSharedContext: aSharedHeadlessContext ].

				aHeadlessContext := GlutinHeadlessContext
					fromNativeHandle: (GlutinHeadlessContext primCreate: self contextBuilder: aContextBuilder).
			
				aHeadlessContext isValid
					ifTrue: [
						GlutinLibrary println: '[Glutin] Profile #', anIndex asString, ' worked'.
						aContextBuilder sharedContextDo: [ :aSharedContext | aHeadlessContext sharedContext: aSharedContext ].
						aHeadlessContext eventLoop: self.
						^ aHeadlessContext ] ] ].

	self error: 'Could not find a suitable OpenGL profile for this system'
]

{ #category : #'api - events' }
GlutinEventLoop >> createProxy [
	<return: #GlutinEventLoopProxy>

	^ GlutinEventLoopProxy fromNativeHandle: self primCreateProxy
]

{ #category : #'api - windows' }
GlutinEventLoop >> createWindow: aWindowBuilder [
	"I choose a context builder so that context creation works"
	| aWindowedContext aSharedHeadlessContext |
	
	aSharedHeadlessContext := self headlessContext.
	
	self
		assert: [ self isNull not ]
		description: [ 'Can not create a window with invalid event loop' ].

	GlutinContextBuilder profilesDo: [ :eachProfile :anIndex |
		(self tryHeadlessContext: eachProfile asContextBuilder)
			ifTrue: [
				| aBuilderCopy aContextBuilder |

				aBuilderCopy := aWindowBuilder copy.

				aContextBuilder := eachProfile asContextBuilder.
				aContextBuilder withSharedContext: aSharedHeadlessContext.

				aWindowedContext := GlutinWindowedContext
					fromNativeHandle: (GlutinWindowedContext primCreate: self windowBuilder: aBuilderCopy contextBuilder: aContextBuilder).
				
				aContextBuilder sharedContextDo: [ :aSharedContext | aWindowedContext sharedContext: aSharedContext ].

				aBuilderCopy nullify.
				aContextBuilder nullify.
			
				aWindowedContext isValid
					ifTrue: [
						GlutinLibrary println: '[Glutin] Profile #', anIndex asString, ' worked'.
						aWindowedContext autoRelease.
						aWindowedContext eventLoop: self.
						aWindowedContext title: aBuilderCopy title.
						
						GlutinWindowsRegistry default registerWindow: aWindowedContext.
						
						^ aWindowedContext ] ] ].
		
	self error: 'Could not find a suitable OpenGL profile for this system'
]

{ #category : #accessing }
GlutinEventLoop >> headlessContext [
	^ headlessContext ifNil: [ headlessContext := self createHeadlessWithSharing: false ]
]

{ #category : #accessing }
GlutinEventLoop >> headlessContextDo: aBlock [
	^ headlessContext ifNotNil: aBlock
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primCreateProxy [
	^ self ffiCall: #(void* glutin_events_loop_create_proxy(self))
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primGetPrimaryMonitor [
	^ self ffiCall: #(GlutinMonitorId glutin_events_loop_get_primary_monitor (self))
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primGetType [
	^ self ffiCall: #(GlutinEventLoopType glutin_events_loop_get_type (self))
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primRunReturn: aCallback [
	^ self ffiCall: #(void glutin_events_loop_run_return(self, GlutinEventCallback aCallback))
]

{ #category : #accessing }
GlutinEventLoop >> primaryMonitor [
	<return: #GlutinMonitorId>
	| aMonitorId |
	
	aMonitorId := self primGetPrimaryMonitor.
	aMonitorId autoRelease.
	aMonitorId eventLoop: self.
	
	^ aMonitorId
]

{ #category : #'api - events' }
GlutinEventLoop >> run: aBlock [
	| aCallback |
	self isNull
		ifTrue: [ ^ self ].
		
	self
		"By design of Winit we must start an events loop only when there is at least one window"
		assert: [ GlutinWindowsRegistry default hasWindows ]
		description: [ 'Must have at least one window' ].
	
	"the callback must overlive an event loop"
	aCallback := GlutinEventCallback on: [ :anEventAddress |
		| aControlFlow |
		
		aControlFlow := aBlock cull: (GlutinBaseEvent fromHandle: anEventAddress) cull: self.
		(aControlFlow isKindOf: GlutinControlFlow)
			ifFalse: [ aControlFlow := GlutinControlFlow poll ].
		aControlFlow ].
	
	"the next call will block the current thread and will return only when the callback
	returns ==GlutinControlFlow exit=="
	self primRunReturn: aCallback
]

{ #category : #'api - windows' }
GlutinEventLoop >> tryHeadlessContext: aContextBuilder [
	<return: #Boolean>

	^ GlutinContextBuilder primTryContext: aContextBuilder eventLoop: self
]

{ #category : #accessing }
GlutinEventLoop >> type [
	<return: #GlutinEventLoopType>
	
	^ self primGetType
]
