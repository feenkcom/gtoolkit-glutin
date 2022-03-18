Class {
	#name : #WinitEventMouseButtonType,
	#superclass : #WinitEnum,
	#classVars : [
		'Left',
		'Middle',
		'Other',
		'Right',
		'Unknown'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
WinitEventMouseButtonType class >> Left [
	"This method was automatically generated"
	^ Left
]

{ #category : #'accessing enum' }
WinitEventMouseButtonType class >> Middle [
	"This method was automatically generated"
	^ Middle
]

{ #category : #'accessing enum' }
WinitEventMouseButtonType class >> Other [
	"This method was automatically generated"
	^ Other
]

{ #category : #'accessing enum' }
WinitEventMouseButtonType class >> Right [
	"This method was automatically generated"
	^ Right
]

{ #category : #'accessing enum' }
WinitEventMouseButtonType class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'enum declaration' }
WinitEventMouseButtonType class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	 Unknown,
    Left,
    Right,
    Middle,
    Other,
	)
]

{ #category : #'enum declaration' }
WinitEventMouseButtonType class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
WinitEventMouseButtonType class >> initialize [
	super initialize
]
