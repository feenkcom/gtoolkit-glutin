Class {
	#name : #Winit30UserInterruptHandler,
	#superclass : #RustWindowingUserInterruptHandler,
	#category : #'Winit-Event fetcher'
}

{ #category : #'as yet unclassified' }
Winit30UserInterruptHandler >> defaultInterruptCombinations [
	^ {
		"mac"
		{ Winit30NamedKey MetaKey. '.'} asSet.
		"windows, linux"
		{Winit30NamedKey ControlKey. '.'} asSet}
]

{ #category : #'as yet unclassified' }
Winit30UserInterruptHandler >> visitKeyboardInputEvent: anEvent [
	| aKey |
	
	aKey := (anEvent key ifNil: [ ^ self ]) key.
	
	anEvent state = WinitEventInputElementState Released
		ifTrue: [ buffer remove: aKey ifAbsent: [  ] ].
	
	anEvent state = WinitEventInputElementState Pressed
		ifTrue: [ buffer add: aKey ].
	
	(interruptCombinations notNil and: [ interruptCombinations includes: buffer ])
		ifTrue: [ self handleUserInterrupt ]
]
