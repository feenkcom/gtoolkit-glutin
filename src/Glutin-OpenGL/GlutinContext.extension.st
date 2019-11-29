Extension { #name : #GlutinContext }

{ #category : #'*Glutin-OpenGL' }
GlutinContext >> gl [
	<return: #GlutinGL>
	
	^ (GlutinGL fromNativeHandle: self primLoadGL) context: self
]

{ #category : #'*Glutin-OpenGL' }
GlutinContext >> primLoadGL [
	"^ self ffiCall: #(void* glutin_context_load_gl(self))"
	^ self subclassResponsibility
]
