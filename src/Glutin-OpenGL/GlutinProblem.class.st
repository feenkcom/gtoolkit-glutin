Class {
	#name : #GlutinProblem,
	#superclass : #Object,
	#instVars : [
		'errors'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #accessing }
GlutinProblem >> description [
	<return: #String>
	false ifTrue: [ self subclassResponsibility ].

	^ 'Unknown problem'
]

{ #category : #accessing }
GlutinProblem >> errors [
	^ errors
]

{ #category : #accessing }
GlutinProblem >> errors: anObject [
	errors := anObject
]

{ #category : #accessing }
GlutinProblem >> errorsString [
	^ self errors
		ifEmpty: [ '' ]
		ifNotEmpty: [ ' ', (self errors collect: #name) printString ]
]

{ #category : #initialization }
GlutinProblem >> initialize [
	super initialize.
	
	errors := #()
]
