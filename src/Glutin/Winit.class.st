Class {
	#name : #Winit,
	#superclass : #Object,
	#traits : 'TWinit',
	#classTraits : 'TWinit classTrait',
	#classVars : [
		'AccessMutex'
	],
	#category : #'Glutin-Library'
}

{ #category : #testing }
Winit class >> isHeadfulVM [
	"Return true if the current pharo vm is `headful`, meaning that the UI is managed by the VM.
	Winit does not work with headful VM"

	^ Smalltalk image isHeadless not
]

{ #category : #testing }
Winit class >> isInteractive [
	"Check if vm were run with headless parameter.
	Different VMs for different platform have different multiple way(s) to indicate that"
	
	"non-headless mode is always interactive"
	Smalltalk image isHeadless ifFalse: [ ^ true ].
	
	-1000 to: 1000 do: [ :n | 
		(#('-interactive' '--interactive') includes: (Smalltalk vm getSystemAttribute: n)) 
			ifTrue: [ ^ true ]].
	
	^ false
]

{ #category : #testing }
Winit class >> isSupported [
	^ WinitLibrary uniqueInstance hasModule
		and: [ self isHeadfulVM not
			and: [ self isInteractive ] ]
]

{ #category : #'private - ffi' }
Winit class >> primPrintln: aStringBox [
	self ffiCall: #(void winit_println(GtStringBox aStringBox))
]

{ #category : #accessing }
Winit class >> println: aString [
	self ffiLibrary
		newString: aString
		during: [ :aStringBox | self primPrintln: aStringBox ]
]
