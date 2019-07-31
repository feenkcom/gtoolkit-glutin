Class {
	#name : #BaselineOfGlutin,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfGlutin
}

{ #category : #baseline }
BaselineOfGlutin >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #'postLoadGlutin:'.
		spec baseline: 'GToolkitInstaller' with: [
				spec repository: 'github://feenkcom/gtoolkit-installer:v0.7.0/src' ].
		spec 
			package: 'Glutin' with: [
				spec requires: #(#GToolkitInstaller ). ];
			package: 'Glutin-OpenGL' with: [
				spec requires: #('Glutin' ). ]. ].

]

{ #category : #baselines }
BaselineOfGlutin >> postLoadGlutin: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInitializeEventsMap: spec.
	self postLoadInstallGlutinBinary: spec.
	self postLoadHackAlien: spec
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadHackAlien: aSpec [
	"nested callbacks don't work. hack around to make glutin callbacks work for now"
	
	Alien class compile: 'invokeCallbackContext: vmCallbackContextAddress "<Integer>" "^<FFICallbackReturnValue>"
	"The low-level entry-point for callbacks sent from the VM/IA32ABI plugin.
	 Evaluate the callback corresponding to the thunk referenced by vmCallbackContextAddress,
	 a pointer to a VMCallbackContext32 or VMCallbackContext64, set up by the VM''s thunkEntry
	 routine.  Return to C via primSignal:andReturnAs:fromContext:.  thisContext''s sender is the
	 call-out context."
	| callbackAlien type myContext |
	callbackAlien := (Smalltalk wordSize = 4
						ifTrue: [VMCallbackContext32]
						ifFalse: [VMCallbackContext64])
							atAddress: vmCallbackContextAddress.
	[type := Callback evaluateCallbackForContext: callbackAlien]
		ifCurtailed: [self error: ''attempt to non-local return across a callback''].
	type ifNil:
		[type := 1. callbackAlien wordResult: -1].
	"Now attempt to return to C.  The primitive will answer false if this is not the most recent Callback,
	 in which case we should wait on the lifoCallbackSemaphore which will be signalled when the most
	 recent callback successfully returns.  If this is the most recent callback the primitive will signal all
	 the processes waiting on the lifoCallbackSemaphore, one of which will be the next most recent.
	 Hence all nested callbacks will end up returning in the right order."
	
	myContext := thisContext.
		
	[callbackAlien primSignal: lifoCallbackSemaphore andReturnAs: type fromContext: myContext] whileFalse:
		[
			lifoCallbackSemaphore wait.
			callbackAlien thunkp = GlutinEventsFetcher default thunkp
				ifTrue: [ callbackAlien primReturnAs: type fromContext: myContext ] ]'
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInitializeEventsMap: aSpec [
	GlutinBaseEvent initializeEventTypeMap
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInstallGlutinBinary: aSpec [
	(self class environment at: #GlutinLibrary) install
]
