Class {
	#name : #GlutinEventsHandler,
	#superclass : #Object,
	#category : #'Glutin-Events Fetcher'
}

{ #category : #'event - handling' }
GlutinEventsHandler >> processGlutinEvent: aGlutinEvent [
	self subclassResponsibility
]
