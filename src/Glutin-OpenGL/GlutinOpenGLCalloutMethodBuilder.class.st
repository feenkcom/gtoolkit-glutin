Class {
	#name : #GlutinOpenGLCalloutMethodBuilder,
	#superclass : #FFICalloutMethodBuilder,
	#instVars : [
		'gl'
	],
	#category : #'Glutin-OpenGL'
}

{ #category : #'private factory' }
GlutinOpenGLCalloutMethodBuilder >> createFFICalloutLiteralFromSpec: functionSpec [
	| externalFunction |
	
	externalFunction := ExternalLibraryFunction
		name: functionSpec functionName
		module: self moduleName
		callType: self callType
		returnType: functionSpec returnType externalTypeWithArity
		argumentTypes: (functionSpec arguments collect: #externalTypeWithArity).
		
	externalFunction setHandle: (gl getProcAddress: externalFunction name) getHandle.
		
	^ externalFunction
]

{ #category : #accessing }
GlutinOpenGLCalloutMethodBuilder >> gl [
	<return: #GlutinOpenGL>

	^ gl
]

{ #category : #accessing }
GlutinOpenGLCalloutMethodBuilder >> gl: aGlutinOpenGL [
	gl := aGlutinOpenGL
]
