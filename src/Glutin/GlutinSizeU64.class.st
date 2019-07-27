Class {
	#name : #GlutinSizeU64,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Structures'
}

{ #category : #'field definition' }
GlutinSizeU64 class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		uint64 x
		uint64 y
 	)
]

{ #category : #converting }
GlutinSizeU64 >> asInteger [
	^ (self y << 32) + self x
]

{ #category : #'accessing structure variables' }
GlutinSizeU64 >> x [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinSizeU64 >> x: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinSizeU64 >> y [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinSizeU64 >> y: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_Y put: anObject
]
