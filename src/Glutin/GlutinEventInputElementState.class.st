Class {
	#name : #GlutinEventInputElementState,
	#superclass : #GlutinEnum,
	#classVars : [
		'Pressed',
		'Released',
		'Unknown'
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

{ #category : #'accessing enum' }
GlutinEventInputElementState class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'enum declaration' }
GlutinEventInputElementState class >> externalDeclaration [
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
GlutinEventInputElementState class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
GlutinEventInputElementState class >> initialize [
	super initialize
]
