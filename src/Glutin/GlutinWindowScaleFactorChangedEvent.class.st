Class {
	#name : #GlutinWindowScaleFactorChangedEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_HEIGHT',
		'OFFSET_SCALE_FACTOR',
		'OFFSET_WIDTH'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinWindowScaleFactorChangedEvent class >> eventType [
	^ WinitEventType WindowEventScaleFactorChanged
]

{ #category : #'field definition' }
GlutinWindowScaleFactorChangedEvent class >> fieldsDesc [
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
GlutinWindowScaleFactorChangedEvent class >> fromBaseEvent: anEvent [
	^ anEvent scale_factor windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinWindowScaleFactorChangedEvent >> accept: aVisitor [
	^ aVisitor visitWindowScaleFactorChangedEvent: self
]

{ #category : #copying }
GlutinWindowScaleFactorChangedEvent >> copy [
	^ super copy
		height: self height;
		scale_factor: self scale_factor;
		width: self width;
		yourself
]

{ #category : #'accessing structure variables' }
GlutinWindowScaleFactorChangedEvent >> height [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing structure variables' }
GlutinWindowScaleFactorChangedEvent >> height: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing structure variables' }
GlutinWindowScaleFactorChangedEvent >> scale_factor [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_SCALE_FACTOR
]

{ #category : #'accessing structure variables' }
GlutinWindowScaleFactorChangedEvent >> scale_factor: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_SCALE_FACTOR put: anObject
]

{ #category : #'accessing structure variables' }
GlutinWindowScaleFactorChangedEvent >> width [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing structure variables' }
GlutinWindowScaleFactorChangedEvent >> width: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_WIDTH put: anObject
]
