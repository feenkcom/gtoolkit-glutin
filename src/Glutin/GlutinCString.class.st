Class {
	#name : #GlutinCString,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_LENGTH'
	],
	#category : #'Glutin-Structures'
}

{ #category : #'field definition' }
GlutinCString class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		void** data
		size_t length
 	)
]

{ #category : #'accessing structure variables' }
GlutinCString >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GlutinCString >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
GlutinCString >> length [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_LENGTH
]

{ #category : #'accessing structure variables' }
GlutinCString >> length: anObject [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_LENGTH put: anObject
]
