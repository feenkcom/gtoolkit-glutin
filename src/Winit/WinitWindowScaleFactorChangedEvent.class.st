Class {
	#name : #WinitWindowScaleFactorChangedEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_HEIGHT',
		'OFFSET_SCALE_FACTOR',
		'OFFSET_WIDTH'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitWindowScaleFactorChangedEvent class >> eventType [
	^ WinitEventType WindowEventScaleFactorChanged
]

{ #category : #'field definition' }
WinitWindowScaleFactorChangedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 scale_factor
		uint32 width
		uint32 height
 	)
]

{ #category : #'event type' }
WinitWindowScaleFactorChangedEvent class >> fromBaseEvent: anEvent [
	^ anEvent scale_factor windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitWindowScaleFactorChangedEvent >> accept: aVisitor [
	^ aVisitor visitWindowScaleFactorChangedEvent: self
]

{ #category : #copying }
WinitWindowScaleFactorChangedEvent >> copy [
	^ super copy
		height: self height;
		scale_factor: self scale_factor;
		width: self width;
		yourself
]

{ #category : #'accessing structure variables' }
WinitWindowScaleFactorChangedEvent >> height [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing structure variables' }
WinitWindowScaleFactorChangedEvent >> height: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing structure variables' }
WinitWindowScaleFactorChangedEvent >> scale_factor [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_SCALE_FACTOR
]

{ #category : #'accessing structure variables' }
WinitWindowScaleFactorChangedEvent >> scale_factor: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_SCALE_FACTOR put: anObject
]

{ #category : #'accessing structure variables' }
WinitWindowScaleFactorChangedEvent >> width [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing structure variables' }
WinitWindowScaleFactorChangedEvent >> width: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_WIDTH put: anObject
]
