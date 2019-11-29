Extension { #name : #GlutinWindowedContext }

{ #category : #'*Glutin-OpenGL' }
GlutinWindowedContext >> primLoadGL [
	^ self ffiCall: #(void* glutin_windowed_context_load_gl(self))
]
