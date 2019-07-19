Class {
	#name : #GlutinControlFlow,
	#superclass : #WinitEnum,
	#classVars : [
		'Exit',
		'Poll',
		'Wait'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinControlFlow class >> Exit [
	"This method was automatically generated"
	^ Exit
]

{ #category : #'accessing enum' }
GlutinControlFlow class >> Poll [
	"This method was automatically generated"
	^ Poll
]

{ #category : #'accessing enum' }
GlutinControlFlow class >> Wait [
	"This method was automatically generated"
	^ Wait
]

{ #category : #'enum declaration' }
GlutinControlFlow class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
		Poll,
		Wait,
		Exit,
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
