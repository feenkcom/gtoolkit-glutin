Class {
	#name : #OSEventsCleared,
	#superclass : #OSEvent,
	#category : #'OSWindow-Glutin'
}

{ #category : #visitor }
OSEventsCleared >> accept: aVisitor [
	^ aVisitor visitEventsCleared: self
]
