Class {
	#name : #GlutinEventCallback,
	#superclass : #FFICallback,
	#category : #'Glutin-Events Fetcher'
}

{ #category : #'callback spec' }
GlutinEventCallback class >> fnSpec [
	^ #(GlutinControlFlow ( void* event ))
]

{ #category : #'callback spec' }
GlutinEventCallback class >> on: aBlock [
	^ self 
		signature: self fnSpec 
		block: aBlock
]
