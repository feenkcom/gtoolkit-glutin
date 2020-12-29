Class {
	#name : #WinitEventMouseButton,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_BUTTON_CODE',
		'OFFSET_BUTTON_TYPE'
	],
	#category : #'Winit-Structures'
}

{ #category : #'field definition' }
WinitEventMouseButton class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		WinitEventMouseButtonType button_type
		uint8 button_code
 	)
]

{ #category : #'accessing structure variables' }
WinitEventMouseButton >> button_code [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BUTTON_CODE
]

{ #category : #'accessing structure variables' }
WinitEventMouseButton >> button_code: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BUTTON_CODE put: anObject
]

{ #category : #'accessing structure variables' }
WinitEventMouseButton >> button_type [
	"This method was automatically generated"
	^WinitEventMouseButtonType fromInteger: (handle unsignedLongAt: OFFSET_BUTTON_TYPE)
]

{ #category : #'accessing structure variables' }
WinitEventMouseButton >> button_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_BUTTON_TYPE put: anObject value
]
