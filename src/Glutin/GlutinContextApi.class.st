Class {
	#name : #GlutinContextApi,
	#superclass : #WinitEnum,
	#classVars : [
		'OpenGl',
		'OpenGlEs',
		'Unknown',
		'WebGl'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinContextApi class >> OpenGl [
	"This method was automatically generated"
	^ OpenGl
]

{ #category : #'accessing enum' }
GlutinContextApi class >> OpenGlEs [
	"This method was automatically generated"
	^ OpenGlEs
]

{ #category : #'accessing enum' }
GlutinContextApi class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'accessing enum' }
GlutinContextApi class >> WebGl [
	"This method was automatically generated"
	^ WebGl
]

{ #category : #'enum declaration' }
GlutinContextApi class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	 OpenGl,
    OpenGlEs,
    WebGl,
    Unknown,
	)
]

{ #category : #'enum declaration' }
GlutinContextApi class >> externalType [
	^ FFIUInt8 new
]

{ #category : #'class initialization' }
GlutinContextApi class >> initialize [
	super initialize
]
