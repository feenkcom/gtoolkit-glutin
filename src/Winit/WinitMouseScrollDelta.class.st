Class {
	#name : #WinitMouseScrollDelta,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_TYPE',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Winit-Structures'
}

{ #category : #'field definition' }
WinitMouseScrollDelta class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		#WinitEventMouseScrollDeltaType type
		float64 x
		float64 y
 	)
]

{ #category : #'accessing structure variables' }
WinitMouseScrollDelta >> type [
	"This method was automatically generated"
	^WinitEventMouseScrollDeltaType fromInteger: (handle unsignedLongAt: OFFSET_TYPE)
]

{ #category : #'accessing structure variables' }
WinitMouseScrollDelta >> type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TYPE put: anObject value
]

{ #category : #'accessing structure variables' }
WinitMouseScrollDelta >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
WinitMouseScrollDelta >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
WinitMouseScrollDelta >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
WinitMouseScrollDelta >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
