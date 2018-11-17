Class {
	#name : #WinitBaseWindowResizedEvent,
	#superclass : #WinitMappedEvent,
	#classVars : [
		'OFFSET_HEIGHT',
		'OFFSET_WIDTH'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitBaseWindowResizedEvent class >> eventType [
	^ WinitEventType WindowEventResized
]

{ #category : #'field definition' }
WinitBaseWindowResizedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 width
		float64 height
 	)
]

{ #category : #'event type' }
WinitBaseWindowResizedEvent class >> fromBaseEvent: anEvent [
	^ anEvent window_resized
]

{ #category : #'accessing structure variables' }
WinitBaseWindowResizedEvent >> height [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_HEIGHT
]

{ #category : #'accessing structure variables' }
WinitBaseWindowResizedEvent >> height: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing structure variables' }
WinitBaseWindowResizedEvent >> width [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_WIDTH
]

{ #category : #'accessing structure variables' }
WinitBaseWindowResizedEvent >> width: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_WIDTH put: anObject
]
