Class {
	#name : #Winit30KeyType,
	#superclass : #WinitEnum,
	#classVars : [
		'CharacterType',
		'NamedType',
		'UnknownType'
	],
	#category : #'Winit-External'
}

{ #category : #'accessing enum' }
Winit30KeyType class >> CharacterType [
	"This method was automatically generated"
	^ CharacterType
]

{ #category : #'accessing enum' }
Winit30KeyType class >> NamedType [
	"This method was automatically generated"
	^ NamedType
]

{ #category : #'accessing enum' }
Winit30KeyType class >> UnknownType [
	"This method was automatically generated"
	^ UnknownType
]

{ #category : #'enum declaration' }
Winit30KeyType class >> enumDecl [
	^ (super enumDecl pairsCollect: [ :aName :anIndex | { (aName asString, 'Type' asSymbol) . anIndex} ]) flattened
]

{ #category : #'enum declaration' }
Winit30KeyType class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	Unknown,
    Named,
    Character,
	)
]

{ #category : #'enum declaration' }
Winit30KeyType class >> externalType [
	^ FFIUInt8 new
]

{ #category : #'class initialization' }
Winit30KeyType class >> initialize [
	super initialize
]
