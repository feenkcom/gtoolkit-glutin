Extension { #name : #WinitGLWindow }

{ #category : #'*OSWindow-Winit' }
WinitGLWindow >> initWebrender [
	^ WebrenderState window: self eventsLoop: self eventsLoop
]
