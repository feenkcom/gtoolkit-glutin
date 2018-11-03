Class {
	#name : #WinitEventsLoopCallback,
	#superclass : #FFICallback,
	#category : #Winit
}

{ #category : #'instance creation' }
WinitEventsLoopCallback class >> fnSpec [
	^ #(bool ())
]

{ #category : #'instance creation' }
WinitEventsLoopCallback class >> on: aBlock [
	^ self 
		signature: self fnSpec 
		block: aBlock
]

{ #category : #initialization }
WinitEventsLoopCallback >> initialize [
	super initialize.
]
