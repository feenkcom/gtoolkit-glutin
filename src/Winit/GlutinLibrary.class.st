Class {
	#name : #GlutinLibrary,
	#superclass : #FFILibrary,
	#category : #Winit
}

{ #category : #'accessing platform' }
GlutinLibrary >> detectLibrary: aFileName [
	^ ({ Smalltalk imageDirectory . Smalltalk vmDirectory . FileSystem workingDirectory }
		collect: [ :aPath | aPath asFileReference / aFileName ])
			detect: #exists
			ifFound: #fullName
			ifNone: [ aFileName ]
]

{ #category : #'accessing platform' }
GlutinLibrary >> macModuleName [
	^ self detectLibrary: 'libGlutin.dylib'
]
