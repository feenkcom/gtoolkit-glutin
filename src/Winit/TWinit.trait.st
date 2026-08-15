Trait {
	#name : #TWinit,
	#category : #'Winit-Library'
}

{ #category : #accessing }
TWinit classSide >> ffiLibrary [
	^ WinitLibrary uniqueInstance
]
