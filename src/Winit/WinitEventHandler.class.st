Class {
	#name : #WinitEventHandler,
	#superclass : #Object,
	#category : #'Winit-Event Loop'
}

{ #category : #'event - handling' }
WinitEventHandler >> processWinitEvent: aWinitMappedEvent [
	self subclassResponsibility
]
