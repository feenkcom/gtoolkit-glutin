Class {
	#name : #GlutinSizeU32,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Structures'
}

{ #category : #'field definition' }
GlutinSizeU32 class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		uint32 x
		uint32 y
 	)
]

{ #category : #'accessing structure variables' }
GlutinSizeU32 >> x [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinSizeU32 >> x: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinSizeU32 >> y [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinSizeU32 >> y: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_Y put: anObject
]
