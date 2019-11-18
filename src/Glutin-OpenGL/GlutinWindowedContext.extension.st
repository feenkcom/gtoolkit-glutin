Extension { #name : #GlutinWindowedContext }

{ #category : #'*Glutin-OpenGL' }
GlutinWindowedContext >> gl [
	<return: #GlutinGL>
	| gl |

	gl := self primLoadGL.
	gl autoRelease.
	
	^ gl
]

{ #category : #'*Glutin-OpenGL' }
GlutinWindowedContext >> primLoadGL [
	^ self ffiCall: #(GlutinGL glutin_windowed_context_load_gl(self))
]
