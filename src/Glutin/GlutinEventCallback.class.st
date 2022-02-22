Class {
	#name : #GlutinEventCallback,
	#superclass : #FFICallback,
	#category : #'Glutin-Event fetcher'
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
		newCallbackWithSignature: self fnSpec 
		block: aBlock
]

{ #category : #resources }
GlutinEventCallback >> calloutAPIClass [
	^ self class environment
		at: #ThreadedFFIMigration
		ifPresent: [ :aThreadedFFIMigration |
			aThreadedFFIMigration threadedFFIAvailable
				ifTrue: [ self class environment at: #TFCalloutAPI ]
				ifFalse: [ super calloutAPIClass ] ]
		ifAbsent: [ super calloutAPIClass ]
]

{ #category : #resources }
GlutinEventCallback >> ffiLibrary [

	^ self class ffiLibrary
]
