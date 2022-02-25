Trait {
	#name : #TGlutinEventLoop,
	#category : #'Glutin-Event loop'
}

{ #category : #'api - windows' }
TGlutinEventLoop >> closeWindow: aWindowedContext [

	self explicitRequirement
]

{ #category : #'api - windows' }
TGlutinEventLoop >> createWindow: aWindowBuilder [
	"I choose a context builder so that context creation works"
	
	^ self explicitRequirement
]
