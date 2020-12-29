Class {
	#name : #WinitExternalObject,
	#superclass : #GtBoxerExternalObject,
	#category : #'Winit-External'
}

{ #category : #'library path' }
WinitExternalObject class >> ffiLibrary [
	^ WinitSameThreadLibrary
]

{ #category : #'library path' }
WinitExternalObject class >> ffiLibraryName [
	^ self ffiLibrary
]

{ #category : #resources }
WinitExternalObject >> ffiLibrary [
	^ self class ffiLibrary
]

{ #category : #testing }
WinitExternalObject >> isValid [
	^ handle isNotNil and: [ handle isNull not ]
]
