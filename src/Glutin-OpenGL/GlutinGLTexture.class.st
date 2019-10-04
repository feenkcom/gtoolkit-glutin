Class {
	#name : #GlutinGLTexture,
	#superclass : #Object,
	#instVars : [
		'id',
		'extent'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #accessing }
GlutinGLTexture >> extent [
	^ extent
]

{ #category : #accessing }
GlutinGLTexture >> extent: anObject [
	extent := anObject
]

{ #category : #accessing }
GlutinGLTexture >> id [
	^ id
]

{ #category : #accessing }
GlutinGLTexture >> id: anObject [
	id := anObject
]
