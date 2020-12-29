Class {
	#name : #WinitUserEvent,
	#superclass : #WinitCommonEvent,
	#classVars : [
		'OFFSET_EVENT'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitUserEvent class >> eventType [
	^ WinitEventType UserEvent
]

{ #category : #'field definition' }
WinitUserEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		uint32 event
 	)
]

{ #category : #'event type' }
WinitUserEvent class >> fromBaseEvent: anEvent [
	^ anEvent user_event 
]

{ #category : #visiting }
WinitUserEvent >> accept: aVisitor [
	^ aVisitor visitUserEvent: self
]

{ #category : #'accessing structure variables' }
WinitUserEvent >> event [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_EVENT
]

{ #category : #'accessing structure variables' }
WinitUserEvent >> event: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_EVENT put: anObject
]
