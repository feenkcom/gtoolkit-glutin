Class {
	#name : #GlutinTextureBindingProblem,
	#superclass : #GlutinProblem,
	#instVars : [
		'texture'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #accessing }
GlutinTextureBindingProblem >> description [
	^ 'Texture({1}) binding failed{2}' format: {
		self texture.
		self errorsString }
]

{ #category : #accessing }
GlutinTextureBindingProblem >> texture [
	^ texture
]

{ #category : #accessing }
GlutinTextureBindingProblem >> texture: anObject [
	texture := anObject
]
