Class {
	#name : #GlutinUserEvent,
	#superclass : #GlutinCommonEvent,
	#classVars : [
		'OFFSET_EVENT'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinUserEvent class >> eventType [
	^ GlutinEventType UserEvent
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

{ #category : #'event type' }
GlutinUserEvent class >> fromBaseEvent: anEvent [
	^ anEvent user_event 
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
