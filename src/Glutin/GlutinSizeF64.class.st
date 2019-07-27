Class {
	#name : #GlutinSizeF64,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Structures'
}

{ #category : #'field definition' }
GlutinSizeF64 class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 x
		float64 y
 	)
]

{ #category : #'accessing structure variables' }
GlutinSizeF64 >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinSizeF64 >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinSizeF64 >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinSizeF64 >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
