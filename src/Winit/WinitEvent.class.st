Class {
	#name : #WinitEvent,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_EVENT_TYPE'
	],
	#category : #'Winit-Structures'
}

{ #category : #'field definition' }
WinitEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
    WinitEventType event_type
 	)
]

{ #category : #'accessing structure variables' }
WinitEvent >> event_type [
	"This method was automatically generated"
	^WinitEventType fromInteger: (handle unsignedLongAt: OFFSET_EVENT_TYPE)
]

{ #category : #'accessing structure variables' }
WinitEvent >> event_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_EVENT_TYPE put: anObject value
]
