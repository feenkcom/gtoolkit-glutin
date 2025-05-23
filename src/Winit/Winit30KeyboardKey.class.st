Class {
	#name : #Winit30KeyboardKey,
	#superclass : #Object,
	#instVars : [
		'key',
		'location'
	],
	#category : #'Winit-External'
}

{ #category : #'as yet unclassified' }
Winit30KeyboardKey class >> key: aKey [
	^ self
		key: aKey
		location: Winit30KeyLocation StandardLocation
]

{ #category : #'as yet unclassified' }
Winit30KeyboardKey class >> key: aKey location: aLocation [
	^ self new
		key: aKey;
		location: aLocation;
		yourself
]

{ #category : #'instance creation' }
Winit30KeyboardKey class >> leftAlt [
	^ self leftKey: Winit30NamedKey AltKey
]

{ #category : #'instance creation' }
Winit30KeyboardKey class >> leftCtrl [
	^ self leftKey: Winit30NamedKey ControlKey
]

{ #category : #'as yet unclassified' }
Winit30KeyboardKey class >> leftKey: aKey [
	^ self
		key: aKey
		location: Winit30KeyLocation LeftLocation
]

{ #category : #'instance creation' }
Winit30KeyboardKey class >> leftMeta [
	^ self leftKey: Winit30NamedKey MetaKey
]

{ #category : #'instance creation' }
Winit30KeyboardKey class >> leftShift [
	^ self leftKey: Winit30NamedKey ShiftKey
]

{ #category : #'instance creation' }
Winit30KeyboardKey class >> rightAlt [
	^ self rightKey: Winit30NamedKey AltKey
]

{ #category : #'instance creation' }
Winit30KeyboardKey class >> rightCtrl [
	^ self rightKey: Winit30NamedKey ControlKey
]

{ #category : #'instance  creation' }
Winit30KeyboardKey class >> rightKey: aKey [
	^ self
		key: aKey
		location: Winit30KeyLocation RightLocation
]

{ #category : #'instance creation' }
Winit30KeyboardKey class >> rightMeta [
	^ self rightKey: Winit30NamedKey MetaKey
]

{ #category : #'instance creation' }
Winit30KeyboardKey class >> rightShift [
	^ self rightKey: Winit30NamedKey ShiftKey
]

{ #category : #'as yet unclassified' }
Winit30KeyboardKey >> = anObject [
	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ key = anObject key and: [ location = anObject location ]
]

{ #category : #'as yet unclassified' }
Winit30KeyboardKey >> gtDisplayOn: aStream [
	self location ~= Winit30KeyLocation StandardLocation
		ifTrue: [
			aStream
				nextPutAll: (self location item withoutSuffix: 'Location');
				space ].

	self key isString
		ifTrue: [ aStream nextPutAll: self key asUppercase ]
		ifFalse: [ self key gtDisplayOn: aStream ]
]

{ #category : #'as yet unclassified' }
Winit30KeyboardKey >> hash [
	^ self key hash bitXor: self location hash
]

{ #category : #accessing }
Winit30KeyboardKey >> key [
	^ key
]

{ #category : #accessing }
Winit30KeyboardKey >> key: anObject [
	key := anObject
]

{ #category : #accessing }
Winit30KeyboardKey >> location [
	^ location
]

{ #category : #accessing }
Winit30KeyboardKey >> location: anObject [
	location := anObject
]
