Extension { #name : #Alien }

{ #category : #'*Glutin' }
Alien class >> gtInvokeCallbackContext: vmCallbackContextAddress [ "<Integer>" "^<FFICallbackReturnValue>"
	"The low-level entry-point for callbacks sent from the VM/IA32ABI plugin.
	 Evaluate the callback corresponding to the thunk referenced by vmCallbackContextAddress,
	 a pointer to a VMCallbackContext32 or VMCallbackContext64, set up by the VM's thunkEntry
	 routine.  Return to C via primSignal:andReturnAs:fromContext:.  thisContext's sender is the
	 call-out context."
	| callbackAlien type myContext |
	callbackAlien := (Smalltalk wordSize = 4
						ifTrue: [VMCallbackContext32]
						ifFalse: [VMCallbackContext64])
							atAddress: vmCallbackContextAddress.
							
	[type := Callback evaluateCallbackForContext: callbackAlien]
		ifCurtailed: [self error: 'attempt to non-local return across a callback'].
	type ifNil:
		[type := 1. callbackAlien wordResult: -1].
	"Now attempt to return to C.  The primitive will answer false if this is not the most recent Callback,
	 in which case we should wait on the lifoCallbackSemaphore which will be signalled when the most
	 recent callback successfully returns.  If this is the most recent callback the primitive will signal all
	 the processes waiting on the lifoCallbackSemaphore, one of which will be the next most recent.
	 Hence all nested callbacks will end up returning in the right order."
	
	myContext := thisContext.
	
	"We know that glutin callback is the root callback while all other ones are nested.
	therefore if we meet a non-glutin callback we can safely return from it directly"
	callbackAlien thunkp = GlutinEventsFetcher default thunkp
		ifFalse: [
			callbackAlien primSignal: lifoCallbackSemaphore andReturnAs: type fromContext: myContext.
			"using primitives does not work here, so we return the type directly"
			^ type	 ].
	
	[ callbackAlien primSignal: lifoCallbackSemaphore andReturnAs: type fromContext: myContext] whileFalse: [
		[ (lifoCallbackSemaphore instVarNamed: #excessSignals) > 0 ]
				whileTrue: [ lifoCallbackSemaphore wait ].

		callbackAlien primReturnAs: type fromContext: myContext ]
]
