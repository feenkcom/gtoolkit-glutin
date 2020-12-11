Class {
	#name : #GlutinExternalObject,
	#superclass : #GtBoxerExternalObject,
	#category : #'Glutin-External'
}

{ #category : #'library path' }
GlutinExternalObject class >> ffiLibrary [
	^ GlutinSameThreadLibrary
]

{ #category : #'library path' }
GlutinExternalObject class >> ffiLibraryName [
	^ self ffiLibrary
]

{ #category : #resources }
GlutinExternalObject >> ffiLibrary [
	^ self class ffiLibrary
]

{ #category : #testing }
GlutinExternalObject >> isValid [
	^ handle isNotNil and: [ handle isNull not ]
]
