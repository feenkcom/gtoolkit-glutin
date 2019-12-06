Extension { #name : #GlutinWindowedContext }

{ #category : #'*Glutin-OpenGL' }
GlutinWindowedContext >> primLoadGleamGL [
	^ self ffiCall: #(void* glutin_windowed_context_load_gl(self))
]
