Class {
	#name : #WinitWindowMovedEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitWindowMovedEvent class >> eventType [
	^ WinitEventType WindowEventMoved
]

{ #category : #'field definition' }
WinitWindowMovedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int32 x
		int32 y
 	)
]

{ #category : #'event type' }
WinitWindowMovedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_moved windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitWindowMovedEvent >> accept: aVisitor [
	^ aVisitor visitWindowMovedEvent: self
]

{ #category : #copying }
WinitWindowMovedEvent >> copy [
	^ super copy
		x: self x;
		y: self y;
		yourself
]

{ #category : #'accessing structure variables' }
WinitWindowMovedEvent >> x [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
WinitWindowMovedEvent >> x: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
WinitWindowMovedEvent >> y [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
WinitWindowMovedEvent >> y: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_Y put: anObject
]
