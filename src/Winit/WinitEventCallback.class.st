Class {
	#name : #WinitEventCallback,
	#superclass : #FFICallback,
	#category : #'Winit-Event Loop'
}

{ #category : #resources }
WinitEventCallback class >> ffiLibrary [

	^ WinitSameThreadLibrary
]

{ #category : #'callback spec' }
WinitEventCallback class >> fnSpec [
	^ #(WinitControlFlow ( void* event ))
]

{ #category : #'callback spec' }
WinitEventCallback class >> on: aBlock [
	^ self 
		newCallbackWithSignature: self fnSpec 
		block: aBlock
]

{ #category : #resources }
WinitEventCallback >> calloutAPIClass [

	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFCalloutAPI ]
		ifFalse: [ super calloutAPIClass ]
]

{ #category : #resources }
WinitEventCallback >> ffiLibrary [

	^ self class ffiLibrary
]
