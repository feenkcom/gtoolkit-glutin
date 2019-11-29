Extension { #name : #GlutinWindowedContext }

{ #category : #'*Glutin-OpenGL' }
GlutinWindowedContext >> gl [
	<return: #GlutinGL>

	^ GlutinGL fromNativeHandle: self primLoadGL
]

{ #category : #'*Glutin-OpenGL' }
GlutinWindowedContext >> primLoadGL [
	^ self ffiCall: #(void* glutin_windowed_context_load_gl(self))
]
