Trait {
	#name : #TGlutin,
	#category : #'Glutin-Library'
}

{ #category : #accessing }
TGlutin classSide >> ffiLibrary [
	^ GlutinLibrary uniqueInstance
]
