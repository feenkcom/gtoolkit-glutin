Extension { #name : #GlutinWindowedContext }

{ #category : #'*Glutin-OpenGL' }
GlutinWindowedContext >> gl [
	<return: #GlutinOpenGL>

	^ GlutinOpenGL new context: self
]
