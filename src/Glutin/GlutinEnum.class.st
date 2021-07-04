Class {
	#name : #GlutinEnum,
	#superclass : #FFIExternalEnumeration,
	#category : #'Glutin-Enums'
}

{ #category : #'enum declaration' }
GlutinEnum class >> enumDecl [
	| declaration index |
	"
	self rebuildEnumAccessors
	"

	self = GlutinEnum
		ifTrue: [ ^ #() ].
		
	index := -1.
	declaration := self externalDeclaration.
	
	self
		assert: [ declaration last = #, ]
		description: [ 'Declaration must end with comma!' ].
	
	^ (declaration pairsCollect: [ :aName :aComma |  index := index + 1. { aName . index } ]) flattened
]

{ #category : #'enum declaration' }
GlutinEnum class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ self subclassResponsibility
]

{ #category : #'enum declaration' }
GlutinEnum class >> externalType [
	^ self subclassResponsibility
]

{ #category : #'class initialization' }
GlutinEnum class >> initialize [
	
	"Skip initialization of root class"
	self = GlutinEnum
		ifTrue: [ ^ self ].

	self initializeEnumeration.
	representationType := self externalType.
	
	Author
		useAuthor: 'UFFI'
		during: [ self rebuildEnumAccessors ]
]

{ #category : #converting }
GlutinEnum >> asInteger [
	^ self value
]
