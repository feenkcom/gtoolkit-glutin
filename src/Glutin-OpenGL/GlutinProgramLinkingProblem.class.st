Class {
	#name : #GlutinProgramLinkingProblem,
	#superclass : #GlutinProblem,
	#instVars : [
		'program'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #accessing }
GlutinProgramLinkingProblem >> description [
	^ 'Program({1}) linking failed' format: { self program }
]

{ #category : #accessing }
GlutinProgramLinkingProblem >> program [
	^ program
]

{ #category : #accessing }
GlutinProgramLinkingProblem >> program: anObject [
	program := anObject
]
