Class {
	#name : #GlutinBaseWindowFocusedEvent,
	#superclass : #WinitMappedEvent,
	#classVars : [
		'OFFSET_IS_FOCUSED'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseWindowFocusedEvent class >> eventType [
	^ WinitEventType WindowEventFocused
]

{ #category : #'field definition' }
GlutinBaseWindowFocusedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		bool is_focused
 	)
]

{ #category : #'event type' }
GlutinBaseWindowFocusedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_focused
]

{ #category : #visiting }
GlutinBaseWindowFocusedEvent >> accept: aVisitor [
	^ aVisitor visitWindowFocusedEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseWindowFocusedEvent >> is_focused [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_IS_FOCUSED
]

{ #category : #'accessing structure variables' }
GlutinBaseWindowFocusedEvent >> is_focused: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_IS_FOCUSED put: anObject
]
