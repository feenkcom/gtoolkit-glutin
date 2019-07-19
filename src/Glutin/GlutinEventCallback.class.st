Class {
	#name : #GlutinEventCallback,
	#superclass : #FFICallback,
	#category : #Glutin
}

{ #category : #'callback spec' }
GlutinEventCallback class >> fnSpec [

	^'GlutinControlFlow ( GlutinBaseEvent* event)'
]

{ #category : #'callback spec' }
GlutinEventCallback class >> on: aBlock [
	^ self 
		signature: self fnSpec 
		block: aBlock
]
