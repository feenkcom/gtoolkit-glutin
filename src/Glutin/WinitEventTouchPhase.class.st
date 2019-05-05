Class {
	#name : #WinitEventTouchPhase,
	#superclass : #WinitEnum,
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
WinitEventTouchPhase class >> Cancelled [
	"This method was automatically generated"
	^ Cancelled
]

{ #category : #'accessing enum' }
WinitEventTouchPhase class >> Ended [
	"This method was automatically generated"
	^ Ended
]

{ #category : #'accessing enum' }
WinitEventTouchPhase class >> Moved [
	"This method was automatically generated"
	^ Moved
]

{ #category : #'accessing enum' }
WinitEventTouchPhase class >> Started [
	"This method was automatically generated"
	^ Started
]

{ #category : #'accessing enum' }
WinitEventTouchPhase class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'enum declaration' }
WinitEventTouchPhase class >> externalDeclaration [
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
WinitEventTouchPhase class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
WinitEventTouchPhase class >> initialize [
	super initialize
]
