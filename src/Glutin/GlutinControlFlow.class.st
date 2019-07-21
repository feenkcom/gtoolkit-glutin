Class {
	#name : #GlutinControlFlow,
	#superclass : #WinitEnum,
	#classVars : [
		'exit',
		'poll',
		'wait'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinControlFlow class >> exit [
	"This method was automatically generated"
	^ exit
]

{ #category : #'enum declaration' }
GlutinControlFlow class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
		poll,
		wait,
		exit,
	)
]

{ #category : #'enum declaration' }
GlutinControlFlow class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
GlutinControlFlow class >> initialize [
	super initialize
]

{ #category : #'accessing enum' }
GlutinControlFlow class >> poll [
	"This method was automatically generated"
	^ poll
]

{ #category : #'accessing enum' }
GlutinControlFlow class >> wait [
	"This method was automatically generated"
	^ wait
]
