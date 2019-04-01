Trait {
	#name : #TGlutinLibrary,
	#category : #Glutin
}

{ #category : #'library path' }
TGlutinLibrary classSide >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'library path' }
TGlutinLibrary >> ffiLibraryName [
	^ self class ffiLibraryName
]
