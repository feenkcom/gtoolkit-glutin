Class {
	#name : #GlutinEventCallback,
	#superclass : #FFICallback,
	#instVars : [
		'session',
		'isValid'
	],
	#category : #'Glutin-Events Fetcher'
}

{ #category : #'callback spec' }
GlutinEventCallback class >> fnSpec [

	^'GlutinControlFlow ( GlutinBaseEvent* event, void* eventLoopWindowTarget )'
]

{ #category : #'callback spec' }
GlutinEventCallback class >> on: aBlock [
	^ self 
		signature: self fnSpec 
		block: aBlock
]

{ #category : #accessing }
GlutinEventCallback >> isValid [
	^ isValid ifNil: [ isValid := true ]
]

{ #category : #accessing }
GlutinEventCallback >> isValid: anObject [
	isValid := anObject
]

{ #category : #accessing }
GlutinEventCallback >> session [
	^ session ifNil: [ session := Smalltalk session ]
]

{ #category : #evaluation }
GlutinEventCallback >> valueWithContext: callbackContext sp: stackPointer [
	^ (self session == Smalltalk session and: [ self isValid ])
		ifTrue: [ super valueWithContext: callbackContext sp: stackPointer ]
		ifFalse: [ GlutinControlFlow poll ]
]
