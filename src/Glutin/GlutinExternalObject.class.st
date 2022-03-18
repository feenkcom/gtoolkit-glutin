Class {
	#name : #GlutinExternalObject,
	#superclass : #GtBoxerExternalObject,
	#category : #'Glutin-External'
}

{ #category : #'library path' }
GlutinExternalObject class >> ffiLibrary [
	^ GlutinLibrary
]

{ #category : #testing }
GlutinExternalObject >> isValid [
	^ handle isNotNil and: [ handle isNull not ]
]
