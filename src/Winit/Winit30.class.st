Class {
	#name : #Winit30,
	#superclass : #Object,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-Library'
}

{ #category : #testing }
Winit30 class >> isHeadfulVM [
	"Return true if the current pharo vm is `headful`, meaning that the UI is managed by the VM.
	Winit does not work with headful VM"

	^ Smalltalk image isHeadless not
]

{ #category : #testing }
Winit30 class >> isInteractive [
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
Winit30 class >> isSupported [
	^ Winit30Library uniqueInstance hasModule
		and: [ self isHeadfulVM not
			and: [ self isInteractive ] ]
]
