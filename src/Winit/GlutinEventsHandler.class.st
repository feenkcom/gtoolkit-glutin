Class {
	#name : #GlutinEventsHandler,
	#superclass : #Object,
	#category : #'Winit-Event fetcher'
}

{ #category : #'event - handling' }
GlutinEventsHandler >> processGlutinEvent: aGlutinEvent [
	self subclassResponsibility
]
