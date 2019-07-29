Class {
	#name : #OSWebrenderRenderer,
	#superclass : #OSWindowGLRenderer,
	#instVars : [
		'api',
		'renderer',
		'pipelineId',
		'epoch',
		'documentId'
	],
	#category : #Glutin
}

{ #category : #geometry }
OSWebrenderRenderer >> canvasExtent [
	<return: #Point>

	^ window winitWindow framebufferExtent
]

{ #category : #misc }
OSWebrenderRenderer >> checkThread [
	OSWindowRenderThread isActiveThread
		ifFalse: [ ^ 'GL Renderer must be used inside the OSWindowRenderThread or a critical section' ]
]

{ #category : #misc }
OSWebrenderRenderer >> createContext [
	
]

{ #category : #drawing }
OSWebrenderRenderer >> drawDuring: aBlock [
	self asCurrentDo: [
		| aTransaction aCanvas |
		
		aTransaction := WebrenderTransaction new.
		aCanvas := WebrenderCanvas extent: self layoutExtent pipeline: pipelineId.
		
		aBlock value: aCanvas.
		
		aTransaction setDisplayList: aCanvas epoch: epoch.
		"canvas is no more valid here"
		aTransaction rootPipeline: pipelineId.
		aTransaction generateFrame.
		documentId sendTransaction: aTransaction.
		"transaction is no more valid"
		
		renderer update.
		renderer render: self canvasExtent.
		self swapBuffers
	].
]

{ #category : #geometry }
OSWebrenderRenderer >> layoutExtent [
	<return: #Point>

	^ window winitWindow innerExtent
]

{ #category : #misc }
OSWebrenderRenderer >> makeCurrent: aWindow [
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
OSWebrenderRenderer >> swapBuffers: aWindow [
	self checkThread.
	aWindow winitWindow swapBuffers
]
