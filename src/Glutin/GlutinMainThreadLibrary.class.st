Class {
	#name : #GlutinMainThreadLibrary,
	#superclass : #GlutinLibrary,
	#category : #Glutin
}

{ #category : #'library path' }
GlutinMainThreadLibrary class >> ffiLibraryName [
	^ self
]

{ #category : #'private - ffi' }
GlutinMainThreadLibrary >> calloutAPIClass [
	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFCalloutAPI ]
		ifFalse: [ super calloutAPIClass ]
]

{ #category : #'private - ffi' }
GlutinMainThreadLibrary >> runner [ 

	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFMainThreadRunner uniqueInstance ]
		ifFalse: [ super runner ]
]
