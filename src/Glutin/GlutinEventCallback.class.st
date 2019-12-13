Class {
	#name : #GlutinEventCallback,
	#superclass : #FFICallback,
	#category : #'Glutin-Events Fetcher'
}

{ #category : #resources }
GlutinEventCallback class >> ffiLibrary [

	^ GlutinLibrary
]

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

{ #category : #resources }
GlutinEventCallback >> calloutAPIClass [

	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFCalloutAPI ]
		ifFalse: [ super calloutAPIClass ]
]

{ #category : #resources }
GlutinEventCallback >> ffiLibrary [

	^ self class ffiLibrary
]
