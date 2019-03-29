Class {
	#name : #GlutinOpenGLExamples,
	#superclass : #Object,
	#pools : [
		'GlutinOpenGLConstants'
	],
	#category : #'Glutin-OpenGL-Examples'
}

{ #category : #'examples - gl' }
GlutinOpenGLExamples >> clearScreenBlue [
	<gtExample>
	| aWindowedContext |
	
	aWindowedContext := GlutinWindowedContextExamples new windowedContext.
	aWindowedContext makeCurrent.
	
	aWindowedContext gl
		clearColor_red: 0.0 green: 0.0 blue: 1.0 alpha: 1.0;
		clear: GL_COLOR_BUFFER_BIT.
		
	aWindowedContext swapBuffers.
			
	^ aWindowedContext
]
