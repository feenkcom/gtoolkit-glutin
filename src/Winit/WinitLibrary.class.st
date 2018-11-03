Class {
	#name : #WinitLibrary,
	#superclass : #FFILibrary,
	#category : #Winit
}

{ #category : #'accessing platform' }
WinitLibrary >> detectLibrary: aFileName [
	^ ({ Smalltalk imageDirectory . Smalltalk vmDirectory . FileSystem workingDirectory }
		collect: [ :aPath | aPath asFileReference / aFileName ])
			detect: #exists
			ifFound: #fullName
			ifNone: [ aFileName ]
]

{ #category : #'accessing platform' }
WinitLibrary >> macModuleName [
	^ self detectLibrary: 'libWinit.dylib'
]
