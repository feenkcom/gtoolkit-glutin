Trait {
	#name : #TWinitLibrary,
	#category : #'OSWindow-Winit'
}

{ #category : #'library path' }
TWinitLibrary classSide >> ffiLibraryName [
	^ WinitLibrary
]

{ #category : #'library path' }
TWinitLibrary >> ffiLibraryName [
	^ self class ffiLibraryName
]
