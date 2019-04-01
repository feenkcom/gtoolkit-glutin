Class {
	#name : #WinitBaseWindowMovedEvent,
	#superclass : #WinitMappedEvent,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
WinitBaseWindowMovedEvent class >> eventType [
	^ WinitEventType WindowEventMoved
]

{ #category : #'field definition' }
WinitBaseWindowMovedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 x
		float64 y
 	)
]

{ #category : #'event type' }
WinitBaseWindowMovedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_moved
]

{ #category : #'accessing structure variables' }
WinitBaseWindowMovedEvent >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
WinitBaseWindowMovedEvent >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
WinitBaseWindowMovedEvent >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
WinitBaseWindowMovedEvent >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
