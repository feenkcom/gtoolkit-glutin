Class {
	#name : #GlutinSameThreadLibrary,
	#superclass : #GlutinLibrary,
	#category : #Glutin
}

{ #category : #'library path' }
GlutinSameThreadLibrary class >> ffiLibraryName [
	^ self
]

{ #category : #'private - ffi' }
GlutinSameThreadLibrary >> calloutAPIClass [
	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFCalloutAPI ]
		ifFalse: [ super calloutAPIClass ]
]

{ #category : #'private - ffi' }
GlutinSameThreadLibrary >> runner [ 

	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFSameThreadRunner uniqueInstance ]
		ifFalse: [ super runner ]
]
