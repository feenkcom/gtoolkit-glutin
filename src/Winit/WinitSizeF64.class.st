Class {
	#name : #WinitSizeF64,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Winit-Structures'
}

{ #category : #'field definition' }
WinitSizeF64 class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 x
		float64 y
 	)
]

{ #category : #'accessing structure variables' }
WinitSizeF64 >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
WinitSizeF64 >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
WinitSizeF64 >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
WinitSizeF64 >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
