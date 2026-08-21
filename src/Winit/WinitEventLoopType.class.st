Class {
	#name : #WinitEventLoopType,
	#superclass : #WinitEnum,
	#classVars : [
		'MacOS',
		'Unknown',
		'Wayland',
		'Windows',
		'X11'
	],
	#category : #'Winit-Enums'
}

{ #category : #'accessing enum' }
WinitEventLoopType class >> MacOS [
	"This method was automatically generated"
	^ MacOS
]

{ #category : #'accessing enum' }
WinitEventLoopType class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'accessing enum' }
WinitEventLoopType class >> Wayland [
	"This method was automatically generated"
	^ Wayland
]

{ #category : #'accessing enum' }
WinitEventLoopType class >> Windows [
	"This method was automatically generated"
	^ Windows
]

{ #category : #'accessing enum' }
WinitEventLoopType class >> X11 [
	"This method was automatically generated"
	^ X11
]

{ #category : #'enum declaration' }
WinitEventLoopType class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
		Windows,
		MacOS,
		X11,
		Wayland,
		Unknown,)
]

{ #category : #'enum declaration' }
WinitEventLoopType class >> externalType [
	^ FFIUInt8 new
]

{ #category : #'class initialization' }
WinitEventLoopType class >> initialize [
	super initialize
]
