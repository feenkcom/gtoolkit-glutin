Class {
	#name : #GlutinEventCallback,
	#superclass : #FFICallback,
	#category : #'Glutin-Event fetcher'
}

{ #category : #accessing }
GlutinEventCallback class >> ffiLibrary [
	^ GlutinLibrary
]

{ #category : #'callback spec' }
GlutinEventCallback class >> fnSpec [
	^ #(WinitControlFlow ( void* event ))
]

{ #category : #'callback spec' }
GlutinEventCallback class >> on: aBlock [
	^ self 
		newCallbackWithSignature: self fnSpec 
		block: aBlock
]

{ #category : #accessing }
GlutinEventCallback >> ffiLibrary [
	^ self class ffiLibrary
]
