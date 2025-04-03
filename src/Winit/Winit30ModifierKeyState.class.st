Class {
	#name : #Winit30ModifierKeyState,
	#superclass : #WinitEnum,
	#classVars : [
		'PressedState',
		'UnknownState'
	],
	#category : #'Winit-External'
}

{ #category : #'accessing enum' }
Winit30ModifierKeyState class >> PressedState [
	"This method was automatically generated"
	^ PressedState
]

{ #category : #'accessing enum' }
Winit30ModifierKeyState class >> UnknownState [
	"This method was automatically generated"
	^ UnknownState
]

{ #category : #'enum declaration' }
Winit30ModifierKeyState class >> enumDecl [
	^ (super enumDecl pairsCollect: [ :aName :anIndex | { (aName asString, 'State' asSymbol) . anIndex} ]) flattened
]

{ #category : #'enum declaration' }
Winit30ModifierKeyState class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	Unknown,
    Pressed,
	)
]

{ #category : #'enum declaration' }
Winit30ModifierKeyState class >> externalType [
	^ FFIUInt8 new
]

{ #category : #'class initialization' }
Winit30ModifierKeyState class >> initialize [
	super initialize
]

{ #category : #testing }
Winit30ModifierKeyState >> isNewlyPressed: previousKeyState [
	^ self = self class PressedState
		and: [ previousKeyState = self class UnknownState ]
]
