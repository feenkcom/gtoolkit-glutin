Class {
	#name : #GlutinExternalObject,
	#superclass : #GtBoxerExternalObject,
	#category : #'Glutin-External'
}

{ #category : #'library path' }
GlutinExternalObject class >> ffiLibraryName [
	^ GlutinSameThreadLibrary
]

{ #category : #testing }
GlutinExternalObject >> isValid [
	^ handle isNotNil and: [ handle isNull not ]
]
