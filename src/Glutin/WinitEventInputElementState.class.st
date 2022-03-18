Class {
	#name : #WinitEventInputElementState,
	#superclass : #WinitEnum,
	#classVars : [
		'Pressed',
		'Released',
		'Unknown'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
WinitEventInputElementState class >> Pressed [
	"This method was automatically generated"
	^ Pressed
]

{ #category : #'accessing enum' }
WinitEventInputElementState class >> Released [
	"This method was automatically generated"
	^ Released
]

{ #category : #'accessing enum' }
WinitEventInputElementState class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'enum declaration' }
WinitEventInputElementState class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	 Unknown,
    Pressed,
    Released,
	)
]

{ #category : #'enum declaration' }
WinitEventInputElementState class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
WinitEventInputElementState class >> initialize [
	super initialize
]
