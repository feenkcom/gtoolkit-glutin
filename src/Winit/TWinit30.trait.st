Trait {
	#name : #TWinit30,
	#category : #'Winit-Library'
}

{ #category : #accessing }
TWinit30 classSide >> ffiLibrary [
	^ Winit30Library uniqueInstance
]
