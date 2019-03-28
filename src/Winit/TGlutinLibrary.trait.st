Trait {
	#name : #TGlutinLibrary,
	#category : #Winit
}

{ #category : #'library path' }
TGlutinLibrary classSide >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'library path' }
TGlutinLibrary >> ffiLibraryName [
	^ self class ffiLibraryName
]
