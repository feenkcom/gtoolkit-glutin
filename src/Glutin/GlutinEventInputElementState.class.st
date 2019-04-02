Class {
	#name : #GlutinEventInputElementState,
	#superclass : #WinitEnum,
	#classVars : [
		'Pressed',
		'Released'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinEventInputElementState class >> Pressed [
	"This method was automatically generated"
	^ Pressed
]

{ #category : #'accessing enum' }
GlutinEventInputElementState class >> Released [
	"This method was automatically generated"
	^ Released
]

{ #category : #'enum declaration' }
GlutinEventInputElementState class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
    Pressed,
    Released,
	)
]

{ #category : #'enum declaration' }
GlutinEventInputElementState class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
GlutinEventInputElementState class >> initialize [
	super initialize
]
