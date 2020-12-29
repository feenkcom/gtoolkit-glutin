Class {
	#name : #WinitWindowFocusedEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_IS_FOCUSED'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitWindowFocusedEvent class >> eventType [
	^ WinitEventType WindowEventFocused
]

{ #category : #'field definition' }
WinitWindowFocusedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		bool is_focused
 	)
]

{ #category : #'event type' }
WinitWindowFocusedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_focused windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitWindowFocusedEvent >> accept: aVisitor [
	^ aVisitor visitWindowFocusedEvent: self
]

{ #category : #copying }
WinitWindowFocusedEvent >> copy [
	^ super copy
		is_focused: self is_focused;
		yourself
]

{ #category : #'accessing structure variables' }
WinitWindowFocusedEvent >> is_focused [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_IS_FOCUSED
]

{ #category : #'accessing structure variables' }
WinitWindowFocusedEvent >> is_focused: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_IS_FOCUSED put: anObject
]
