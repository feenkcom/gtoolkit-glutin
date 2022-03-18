Class {
	#name : #RustWindowingEventLoop,
	#superclass : #GtBoxerValueBox,
	#category : #'Glutin-Event loop'
}

{ #category : #'api - windows' }
RustWindowingEventLoop >> closeWindow: aWindowedContext [
	self subclassResponsibility
]

{ #category : #'api - windows' }
RustWindowingEventLoop >> createWindow: aWindowBuilder [
	"I choose a context builder so that context creation works"
	^ self subclassResponsibility
]
