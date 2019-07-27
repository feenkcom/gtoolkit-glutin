Class {
	#name : #GlutinWindowFocusedEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_IS_FOCUSED'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinWindowFocusedEvent class >> eventType [
	^ GlutinEventType WindowEventFocused
]

{ #category : #'field definition' }
GlutinWindowFocusedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		bool is_focused
 	)
]

{ #category : #'event type' }
GlutinWindowFocusedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_focused windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinWindowFocusedEvent >> accept: aVisitor [
	^ aVisitor visitWindowFocusedEvent: self
]

{ #category : #'accessing structure variables' }
GlutinWindowFocusedEvent >> is_focused [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_IS_FOCUSED
]

{ #category : #'accessing structure variables' }
GlutinWindowFocusedEvent >> is_focused: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_IS_FOCUSED put: anObject
]
