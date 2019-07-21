Class {
	#name : #GlutinEventTouchPhase,
	#superclass : #GlutinEnum,
	#classVars : [
		'Cancelled',
		'Ended',
		'Moved',
		'Started',
		'Unknown'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinEventTouchPhase class >> Cancelled [
	"This method was automatically generated"
	^ Cancelled
]

{ #category : #'accessing enum' }
GlutinEventTouchPhase class >> Ended [
	"This method was automatically generated"
	^ Ended
]

{ #category : #'accessing enum' }
GlutinEventTouchPhase class >> Moved [
	"This method was automatically generated"
	^ Moved
]

{ #category : #'accessing enum' }
GlutinEventTouchPhase class >> Started [
	"This method was automatically generated"
	^ Started
]

{ #category : #'accessing enum' }
GlutinEventTouchPhase class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'enum declaration' }
GlutinEventTouchPhase class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	 Unknown,
    Started,
    Moved,
    Ended,
    Cancelled,
	)
]

{ #category : #'enum declaration' }
GlutinEventTouchPhase class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
GlutinEventTouchPhase class >> initialize [
	super initialize
]
