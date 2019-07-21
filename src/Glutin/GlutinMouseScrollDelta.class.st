Class {
	#name : #GlutinMouseScrollDelta,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_TYPE',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Structures'
}

{ #category : #'field definition' }
GlutinMouseScrollDelta class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		#GlutinEventMouseScrollDeltaType type
		float64 x
		float64 y
 	)
]

{ #category : #'accessing structure variables' }
GlutinMouseScrollDelta >> type [
	"This method was automatically generated"
	^GlutinEventMouseScrollDeltaType fromInteger: (handle unsignedLongAt: OFFSET_TYPE)
]

{ #category : #'accessing structure variables' }
GlutinMouseScrollDelta >> type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TYPE put: anObject value
]

{ #category : #'accessing structure variables' }
GlutinMouseScrollDelta >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinMouseScrollDelta >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinMouseScrollDelta >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinMouseScrollDelta >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
