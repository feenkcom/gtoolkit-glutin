Class {
	#name : #WinitEnum,
	#superclass : #FFIExternalEnumeration,
	#category : #'Winit-Enums'
}

{ #category : #'enum declaration' }
WinitEnum class >> enumDecl [
	| declaration index |
	"
	self rebuildEnumAccessors
	"

	self = WinitEnum
		ifTrue: [ ^ #() ].
		
	index := -1.
	declaration := self externalDeclaration.
	
	self
		assert: [ declaration last = #, ]
		description: [ 'Declaration must end with comma!' ].
	
	^ (declaration pairsCollect: [ :aName :aComma |  index := index + 1. { aName . index } ]) flattened
]

{ #category : #'enum declaration' }
WinitEnum class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ self subclassResponsibility
]

{ #category : #'enum declaration' }
WinitEnum class >> externalType [
	^ self subclassResponsibility
]

{ #category : #'class initialization' }
WinitEnum class >> initialize [
	
	"Skip initialization of root class"
	self = WinitEnum
		ifTrue: [ ^ self ].

	self initializeEnumeration.
	representationType := self externalType.
	
	Author
		useAuthor: 'UFFI'
		during: [ self rebuildEnumAccessors ]
]
