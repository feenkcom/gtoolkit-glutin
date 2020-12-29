Class {
	#name : #WinitWindowResizedEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_HEIGHT',
		'OFFSET_WIDTH'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitWindowResizedEvent class >> eventType [
	^ WinitEventType WindowEventResized
]

{ #category : #'field definition' }
WinitWindowResizedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		uint32 width
		uint32 height
 	)
]

{ #category : #'event type' }
WinitWindowResizedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_resized windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitWindowResizedEvent >> accept: aVisitor [
	^ aVisitor visitWindowResizedEvent: self
]

{ #category : #copying }
WinitWindowResizedEvent >> copy [
	^ super copy
		height: self height;
		width: self width;
		yourself
]

{ #category : #'accessing structure variables' }
WinitWindowResizedEvent >> height [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing structure variables' }
WinitWindowResizedEvent >> height: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing structure variables' }
WinitWindowResizedEvent >> width [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing structure variables' }
WinitWindowResizedEvent >> width: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_WIDTH put: anObject
]
