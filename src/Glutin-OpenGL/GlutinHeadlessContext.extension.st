Extension { #name : #GlutinHeadlessContext }

{ #category : #'*Glutin-OpenGL' }
GlutinHeadlessContext >> primLoadGL [
	^ self ffiCall: #(void* glutin_context_load_gl(self))
]
