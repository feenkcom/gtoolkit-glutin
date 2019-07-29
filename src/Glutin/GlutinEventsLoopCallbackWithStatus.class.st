Class {
	#name : #GlutinEventsLoopCallbackWithStatus,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_IS_VALID'
	],
	#category : #'Glutin-Events Fetcher'
}

{ #category : #'field definition' }
GlutinEventsLoopCallbackWithStatus class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		bool is_valid
 	)
]

{ #category : #'accessing structure variables' }
GlutinEventsLoopCallbackWithStatus >> is_valid [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_IS_VALID
]

{ #category : #'accessing structure variables' }
GlutinEventsLoopCallbackWithStatus >> is_valid: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_IS_VALID put: anObject
]
