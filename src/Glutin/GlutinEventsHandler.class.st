Class {
	#name : #GlutinEventsHandler,
	#superclass : #Object,
	#category : #'Glutin-Event fetcher'
}

{ #category : #'event - handling' }
GlutinEventsHandler >> processGlutinEvent: aGlutinEvent [
	self subclassResponsibility
]
