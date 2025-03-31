Class {
	#name : #Winit30KeyLocation,
	#superclass : #WinitEnum,
	#classVars : [
		'LeftLocation',
		'NumpadLocation',
		'RightLocation',
		'StandardLocation'
	],
	#category : #'Winit-External'
}

{ #category : #'accessing enum' }
Winit30KeyLocation class >> LeftLocation [
	"This method was automatically generated"
	^ LeftLocation
]

{ #category : #'accessing enum' }
Winit30KeyLocation class >> NumpadLocation [
	"This method was automatically generated"
	^ NumpadLocation
]

{ #category : #'accessing enum' }
Winit30KeyLocation class >> RightLocation [
	"This method was automatically generated"
	^ RightLocation
]

{ #category : #'accessing enum' }
Winit30KeyLocation class >> StandardLocation [
	"This method was automatically generated"
	^ StandardLocation
]

{ #category : #'enum declaration' }
Winit30KeyLocation class >> enumDecl [
	^ (super enumDecl pairsCollect: [ :aName :anIndex | { (aName asString, 'Location' asSymbol) . anIndex} ]) flattened
]

{ #category : #'enum declaration' }
Winit30KeyLocation class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	Standard,
    Left,
    Right,
    Numpad,
	)
]

{ #category : #'enum declaration' }
Winit30KeyLocation class >> externalType [
	^ FFIUInt8 new
]

{ #category : #'class initialization' }
Winit30KeyLocation class >> initialize [
	super initialize
]
