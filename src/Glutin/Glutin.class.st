Class {
	#name : #Glutin,
	#superclass : #Object,
	#classVars : [
		'AccessMutex'
	],
	#category : #Glutin
}

{ #category : #'class initialization' }
Glutin class >> critical: aBlock [
	^ AccessMutex critical: aBlock
]

{ #category : #'class initialization' }
Glutin class >> initialize [
	AccessMutex := Monitor new
]

{ #category : #testing }
Glutin class >> isHeadfulVM [
	"Return true if the current pharo vm is `headful`, meaning that the UI is managed by the VM.
	Glutin does not work with headful VM"

	^ Smalltalk image isHeadless not
]

{ #category : #testing }
Glutin class >> isInteractive [
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
Glutin class >> isSupported [
	^ self isHeadfulVM not and: [ self isInteractive ]
]
