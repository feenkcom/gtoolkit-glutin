Class {
	#name : #GlutinWindowFocusedEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_IS_FOCUSED'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowFocusedEvent class >> eventType [
	^ WinitEventType WindowEventFocused
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

{ #category : #visiting }
GlutinWindowFocusedEvent >> accept: aVisitor [
	^ aVisitor visitWindowFocusedEvent: self
]

{ #category : #copying }
GlutinWindowFocusedEvent >> copy [
	^ super copy
		is_focused: self is_focused;
		yourself
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
