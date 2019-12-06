Extension { #name : #GlutinHeadlessContext }

{ #category : #'*Glutin-OpenGL' }
GlutinHeadlessContext >> primLoadGleamGL [
	^ self ffiCall: #(void* glutin_context_load_gl(self))
]
