Class {
	#name : #GlutinEventMouseButtonType,
	#superclass : #WinitEnum,
	#classVars : [
		'Left',
		'Middle',
		'Other',
		'Right'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinEventMouseButtonType class >> Left [
	"This method was automatically generated"
	^ Left
]

{ #category : #'accessing enum' }
GlutinEventMouseButtonType class >> Middle [
	"This method was automatically generated"
	^ Middle
]

{ #category : #'accessing enum' }
GlutinEventMouseButtonType class >> Other [
	"This method was automatically generated"
	^ Other
]

{ #category : #'accessing enum' }
GlutinEventMouseButtonType class >> Right [
	"This method was automatically generated"
	^ Right
]

{ #category : #'enum declaration' }
GlutinEventMouseButtonType class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
    Left,
    Right,
    Middle,
    Other,
	)
]

{ #category : #'enum declaration' }
GlutinEventMouseButtonType class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
GlutinEventMouseButtonType class >> initialize [
	super initialize
]
