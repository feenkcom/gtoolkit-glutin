Class {
	#name : #GlutinEventMouseScrollDeltaType,
	#superclass : #GlutinEnum,
	#classVars : [
		'LineDelta',
		'PixelDelta',
		'Unknown'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinEventMouseScrollDeltaType class >> LineDelta [
	"This method was automatically generated"
	^ LineDelta
]

{ #category : #'accessing enum' }
GlutinEventMouseScrollDeltaType class >> PixelDelta [
	"This method was automatically generated"
	^ PixelDelta
]

{ #category : #'accessing enum' }
GlutinEventMouseScrollDeltaType class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'enum declaration' }
GlutinEventMouseScrollDeltaType class >> externalDeclaration [
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
GlutinEventMouseScrollDeltaType class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
GlutinEventMouseScrollDeltaType class >> initialize [
	super initialize
]
