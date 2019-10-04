Class {
	#name : #GlutinOpenGLTexture,
	#superclass : #Object,
	#instVars : [
		'id',
		'extent'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #accessing }
GlutinOpenGLTexture >> extent [
	^ extent
]

{ #category : #accessing }
GlutinOpenGLTexture >> extent: anObject [
	extent := anObject
]

{ #category : #accessing }
GlutinOpenGLTexture >> id [
	^ id
]

{ #category : #accessing }
GlutinOpenGLTexture >> id: anObject [
	id := anObject
]
