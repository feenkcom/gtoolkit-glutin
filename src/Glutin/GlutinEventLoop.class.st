Class {
	#name : #GlutinEventLoop,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#category : #'Glutin-Events Fetcher'
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

{ #category : #'api - windows' }
GlutinEventLoop >> closeWindow: aWindowedContext [
	GlutinWindowsRegistry default unregisterWindow: aWindowedContext.
	self primDestroyWindow: aWindowedContext.
	aWindowedContext release
]

{ #category : #'api - windows' }
GlutinEventLoop >> createWindow: aWindowBuilder [
	"I choose a context builder so that context creation works"
	| aWindowedContext |
	
	self
		assert: [ self isNull not ]
		description: [ 'Can not create a window with invalid event loop' ].
	
	GlutinContextBuilder profilesDo: [ :eachProfile :anIndex |
		(self tryHeadlessContext: eachProfile)
			ifTrue: [
				| aBuilderCopy |
				
				aBuilderCopy := aWindowBuilder copy.
				aWindowedContext := GlutinWindowedContext primCreate: self windowBuilder: aBuilderCopy contextBuilder: eachProfile.
				aBuilderCopy nullify.
				eachProfile nullify.
			
				aWindowedContext isValid
					ifTrue: [
						GlutinLibrary println: '[Glutin] Profile #', anIndex asString, ' worked'.
						aWindowedContext autoRelease.
						aWindowedContext eventsLoop: self.
						aWindowedContext title: aBuilderCopy title.
						
						GlutinWindowsRegistry default registerWindow: aWindowedContext.
						
						^ aWindowedContext ] ]
			ifFalse: [ GlutinLibrary println: '[Glutin] Profile #', anIndex asString, ' did not work' ] ].
		
	self error: 'Could not find a suitable OpenGL profile for this system'
]

{ #category : #'api - windows' }
GlutinEventLoop >> createWindow: aWindowBuilder context: aContextBuilder [
	| aWindowedContext aBuilderCopy |
	
	aBuilderCopy := aWindowBuilder copy.
	
	aWindowedContext := GlutinWindowedContext
		primCreate: self
		windowBuilder: aBuilderCopy
		contextBuilder: aContextBuilder.

	aBuilderCopy nullify.
	aContextBuilder nullify.

	aWindowedContext autoRelease.
	aWindowedContext eventsLoop: self.
	aWindowedContext title: aWindowBuilder title.
	
	GlutinWindowsRegistry default registerWindow: aWindowedContext.

	^ aWindowedContext
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primDestroyWindow: anWindowedContext [
	^ self ffiCall: #(void glutin_destroy_windowed_context (GlutinWindowedContext anWindowedContext))
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primGetPrimaryMonitor [
	^ self ffiCall: #(GlutinMonitorId glutin_events_loop_get_primary_monitor (#GlutinEventLoop self))
]

{ #category : #'private - ffi' }
GlutinEventLoop >> primRunReturn: aCallback [
	^ self ffiCall: #(void glutin_events_loop_run_return(#GlutinEventLoop self, GlutinEventCallback aCallback))
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
	| aCallback |
	self isNull
		ifTrue: [ ^ self ].
		
	self
		"By design of Winit we must start an events loop only when there is at least one window"
		assert: [ GlutinWindowsRegistry default hasWindows ]
		description: [ 'Must have at least one window' ].
	
	"the callback must overlive an event loop"
	aCallback := GlutinEventCallback on: [ :anEventAddress :anEventLoopWindowTargetAddress |
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
