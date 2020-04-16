Class {
	#name : #GlutinEventLoopType,
	#superclass : #GlutinEnum,
	#classVars : [
		'MacOS',
		'Unknown',
		'Wayland',
		'Windows',
		'X11'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinEventLoopType class >> MacOS [
	"This method was automatically generated"
	^ MacOS
]

{ #category : #'accessing enum' }
GlutinEventLoopType class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'accessing enum' }
GlutinEventLoopType class >> Wayland [
	"This method was automatically generated"
	^ Wayland
]

{ #category : #'accessing enum' }
GlutinEventLoopType class >> Windows [
	"This method was automatically generated"
	^ Windows
]

{ #category : #'accessing enum' }
GlutinEventLoopType class >> X11 [
	"This method was automatically generated"
	^ X11
]

{ #category : #'enum declaration' }
GlutinEventLoopType class >> externalDeclaration [
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
GlutinEventLoopType class >> externalType [
	^ FFIUInt8 new
]

{ #category : #'class initialization' }
GlutinEventLoopType class >> initialize [
	super initialize
]
