Class {
	#name : #GlutinGLBuffer,
	#superclass : #Object,
	#instVars : [
		'stride',
		'extent',
		'pixels'
	],
	#category : #'Glutin-OpenGL-Renderer - Buffer'
}

{ #category : #accessing }
GlutinGLBuffer >> extent [
	<return: #Point>

	^ extent
]

{ #category : #accessing }
GlutinGLBuffer >> extent: anObject [
	extent := anObject
]

{ #category : #accessing }
GlutinGLBuffer >> height [
	<return: #Number>

	^ extent y
]

{ #category : #accessing }
GlutinGLBuffer >> pixels [
	<return: #FFIExternalArray>

	^ pixels
]

{ #category : #accessing }
GlutinGLBuffer >> pixels: anObject [
	pixels := anObject
]

{ #category : #accessing }
GlutinGLBuffer >> stride [
	<return: #Number>

	^ stride
]

{ #category : #accessing }
GlutinGLBuffer >> stride: anObject [
	stride := anObject
]

{ #category : #accessing }
GlutinGLBuffer >> width [
	<return: #Number>

	^ extent x
]
