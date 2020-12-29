Class {
	#name : #WinitEventMouseScrollDeltaType,
	#superclass : #WinitEnum,
	#classVars : [
		'LineDelta',
		'PixelDelta',
		'Unknown'
	],
	#category : #'Winit-Enums'
}

{ #category : #'accessing enum' }
WinitEventMouseScrollDeltaType class >> LineDelta [
	"This method was automatically generated"
	^ LineDelta
]

{ #category : #'accessing enum' }
WinitEventMouseScrollDeltaType class >> PixelDelta [
	"This method was automatically generated"
	^ PixelDelta
]

{ #category : #'accessing enum' }
WinitEventMouseScrollDeltaType class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'enum declaration' }
WinitEventMouseScrollDeltaType class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	 Unknown,
    LineDelta,
    PixelDelta,
	)
]

{ #category : #'enum declaration' }
WinitEventMouseScrollDeltaType class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
WinitEventMouseScrollDeltaType class >> initialize [
	super initialize
]
