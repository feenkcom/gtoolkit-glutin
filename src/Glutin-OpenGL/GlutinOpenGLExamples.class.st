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
	| aWindowedContext gl aTexture |
	
	aWindowedContext := GlutinWindowedContextExamples new windowedContext.
	aWindowedContext makeCurrent.
	
	gl := aWindowedContext gl.
	
	aTexture := gl gen_texture.
	gl enable_texture_2d.
	
	gl bind_texture_2d: aTexture.
	
	gl disable_texture_2d.
		
	aWindowedContext swapBuffers.
			
	^ aWindowedContext
]
