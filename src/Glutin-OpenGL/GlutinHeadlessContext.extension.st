Extension { #name : #GlutinHeadlessContext }

{ #category : #'*Glutin-OpenGL' }
GlutinHeadlessContext >> gl [
	<return: #GlutinGL>
	| gl |

	gl := self primLoadGL.
	gl autoRelease.
	
	^ gl
]

{ #category : #'*Glutin-OpenGL' }
GlutinHeadlessContext >> primLoadGL [
	^ self ffiCall: #(GlutinGL glutin_context_load_gl(self))
]
