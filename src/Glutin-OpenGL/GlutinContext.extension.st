Extension { #name : #GlutinContext }

{ #category : #'*Glutin-OpenGL' }
GlutinContext >> gl [
	<return: #GlutinGL>
	
	^ (GlutinGL fromNativeHandle: self primLoadGleamGL) context: self
]

{ #category : #'*Glutin-OpenGL' }
GlutinContext >> primLoadGleamGL [
	"^ self ffiCall: #(void* glutin_context_load_gl(self))"
	^ self subclassResponsibility
]
