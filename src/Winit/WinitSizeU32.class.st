Class {
	#name : #WinitSizeU32,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Winit-Structures'
}

{ #category : #'field definition' }
WinitSizeU32 class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		uint32 x
		uint32 y
 	)
]

{ #category : #'accessing structure variables' }
WinitSizeU32 >> x [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
WinitSizeU32 >> x: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
WinitSizeU32 >> y [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
WinitSizeU32 >> y: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_Y put: anObject
]
