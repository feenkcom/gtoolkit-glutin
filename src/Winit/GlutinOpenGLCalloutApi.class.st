Class {
	#name : #GlutinOpenGLCalloutApi,
	#superclass : #FFICalloutAPI,
	#instVars : [
		'gl'
	],
	#category : #'Winit-OpenGL'
}

{ #category : #accessing }
GlutinOpenGLCalloutApi >> gl [
	<return: #GlutinOpenGL>

	^ gl
]

{ #category : #accessing }
GlutinOpenGLCalloutApi >> gl: aGlutinOpenGL [
	gl := aGlutinOpenGL
]

{ #category : #action }
GlutinOpenGLCalloutApi >> newBuilder [
	^ (GlutinOpenGLCalloutMethodBuilder calloutAPI: self) gl: self gl
]
