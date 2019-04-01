Class {
	#name : #GlutinEventsLoopCallback,
	#superclass : #FFICallback,
	#category : #Glutin
}

{ #category : #'instance creation' }
GlutinEventsLoopCallback class >> fnSpec [
	^ #(bool ())
]

{ #category : #'instance creation' }
GlutinEventsLoopCallback class >> on: aBlock [
	^ self 
		signature: self fnSpec 
		block: aBlock
]

{ #category : #initialization }
GlutinEventsLoopCallback >> initialize [
	super initialize.
]
