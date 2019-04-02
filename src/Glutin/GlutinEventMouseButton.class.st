Class {
	#name : #GlutinEventMouseButton,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_BUTTON_CODE',
		'OFFSET_BUTTON_TYPE'
	],
	#category : #'Glutin-Structures'
}

{ #category : #'field definition' }
GlutinEventMouseButton class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		GlutinEventMouseButtonType button_type
		uint8 button_code
 	)
]

{ #category : #'accessing structure variables' }
GlutinEventMouseButton >> button_code [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BUTTON_CODE
]

{ #category : #'accessing structure variables' }
GlutinEventMouseButton >> button_code: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BUTTON_CODE put: anObject
]

{ #category : #'accessing structure variables' }
GlutinEventMouseButton >> button_type [
	"This method was automatically generated"
	^GlutinEventMouseButtonType fromInteger: (handle unsignedLongAt: OFFSET_BUTTON_TYPE)
]

{ #category : #'accessing structure variables' }
GlutinEventMouseButton >> button_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_BUTTON_TYPE put: anObject value
]
