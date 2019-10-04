Class {
	#name : #GlutinOpenGLBuffer,
	#superclass : #Object,
	#instVars : [
		'stride',
		'extent',
		'pixels'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #accessing }
GlutinOpenGLBuffer >> extent [
	<return: #Point>

	^ extent
]

{ #category : #accessing }
GlutinOpenGLBuffer >> extent: anObject [
	extent := anObject
]

{ #category : #accessing }
GlutinOpenGLBuffer >> height [
	<return: #Number>

	^ extent y
]

{ #category : #accessing }
GlutinOpenGLBuffer >> pixels [
	<return: #FFIExternalArray>

	^ pixels
]

{ #category : #accessing }
GlutinOpenGLBuffer >> pixels: anObject [
	pixels := anObject
]

{ #category : #accessing }
GlutinOpenGLBuffer >> stride [
	<return: #Number>

	^ stride
]

{ #category : #accessing }
GlutinOpenGLBuffer >> stride: anObject [
	stride := anObject
]

{ #category : #accessing }
GlutinOpenGLBuffer >> width [
	<return: #Number>

	^ extent x
]
