Class {
	#name : #WinitEventMouseScrollDeltaType,
	#superclass : #WinitEnum,
	#classVars : [
		'LineDelta',
		'PixelDelta'
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

{ #category : #'enum declaration' }
WinitEventMouseScrollDeltaType class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
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
