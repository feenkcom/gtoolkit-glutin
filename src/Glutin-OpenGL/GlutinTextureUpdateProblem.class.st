Class {
	#name : #GlutinTextureUpdateProblem,
	#superclass : #GlutinProblem,
	#instVars : [
		'texture'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #accessing }
GlutinTextureUpdateProblem >> description [
	^ 'Texture({1}) update failed{2}' format: {
		self texture.
		self errorsString }
]

{ #category : #accessing }
GlutinTextureUpdateProblem >> texture [
	^ texture
]

{ #category : #accessing }
GlutinTextureUpdateProblem >> texture: anObject [
	texture := anObject
]
