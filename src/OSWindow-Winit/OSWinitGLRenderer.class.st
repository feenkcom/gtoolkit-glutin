Class {
	#name : #OSWinitGLRenderer,
	#superclass : #OSWindowGLRenderer,
	#instVars : [
		'api',
		'renderer'
	],
	#category : #'OSWindow-Winit'
}

{ #category : #misc }
OSWinitGLRenderer >> checkThread [
	OSWindowRenderThread isActiveThread
		ifFalse: [ ^ 'GL Renderer must be used inside the OSWindowRenderThread or a critical section' ]
]

{ #category : #misc }
OSWinitGLRenderer >> createContext [
	self onRenderThreadBlocking: [
		| aState |
		
		aState := WebrenderState window: window winitWindow.
		
		api := aState api.
		renderer := aState renderer ]
]

{ #category : #misc }
OSWinitGLRenderer >> makeCurrent: aWindow [
	| winitWindow |

	(api isNil or: [ renderer isNil ])
		ifTrue: [ ^ false ].
	
	self checkThread.

	winitWindow := aWindow winitWindow.
	winitWindow
		ifNil: [ ^ false ].

	winitWindow makeCurrent.
	^ true
]

{ #category : #misc }
OSWinitGLRenderer >> swapBuffers: aWindow [
	self checkThread.
	aWindow winitWindow swapBuffers
]
