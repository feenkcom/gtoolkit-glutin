Class {
	#name : #WinitControlFlow,
	#superclass : #WinitEnum,
	#classVars : [
		'exit',
		'poll',
		'wait'
	],
	#category : #'Winit-Enums'
}

{ #category : #'accessing enum' }
WinitControlFlow class >> exit [
	"This method was automatically generated"
	^ exit
]

{ #category : #'enum declaration' }
WinitControlFlow class >> externalDeclaration [
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
WinitControlFlow class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
WinitControlFlow class >> initialize [
	super initialize
]

{ #category : #'accessing enum' }
WinitControlFlow class >> poll [
	"This method was automatically generated"
	^ poll
]

{ #category : #'accessing enum' }
WinitControlFlow class >> wait [
	"This method was automatically generated"
	^ wait
]
