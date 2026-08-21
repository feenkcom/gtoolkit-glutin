Class {
	#name : #GlutinUserEvent,
	#superclass : #GlutinCommonEvent,
	#classVars : [
		'OFFSET_EVENT'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinUserEvent class >> eventType [
	^ WinitEventType UserEvent
]

{ #category : #'field definition' }
GlutinUserEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		uint32 event
 	)
]

{ #category : #visiting }
GlutinUserEvent >> accept: aVisitor [
	^ aVisitor visitUserEvent: self
]

{ #category : #'accessing structure variables' }
GlutinUserEvent >> event [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_EVENT
]

{ #category : #'accessing structure variables' }
GlutinUserEvent >> event: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_EVENT put: anObject
]
