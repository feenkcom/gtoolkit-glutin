Class {
	#name : #GlutinMouseInputEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_BUTTON',
		'OFFSET_DEVICE_ID',
		'OFFSET_STATE'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinMouseInputEvent class >> eventType [
	^ GlutinEventType WindowEventMouseInput
]

{ #category : #'field definition' }
GlutinMouseInputEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		GlutinEventInputElementState state
		GlutinEventMouseButton button
 	)
]

{ #category : #'event type' }
GlutinMouseInputEvent class >> fromBaseEvent: anEvent [
	^ anEvent mouse_input windowId: anEvent window_id asInteger
]

{ #category : #visiting }
GlutinMouseInputEvent >> accept: aVisitor [
	^ aVisitor visitMouseInputEvent: self
]

{ #category : #'accessing structure variables' }
GlutinMouseInputEvent >> button [
	"This method was automatically generated"
	^ GlutinEventMouseButton fromHandle: (handle referenceStructAt: OFFSET_BUTTON length: GlutinEventMouseButton byteSize)
]

{ #category : #'accessing structure variables' }
GlutinMouseInputEvent >> button: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_BUTTON put: anObject getHandle length: GlutinEventMouseButton byteSize
]

{ #category : #'accessing structure variables' }
GlutinMouseInputEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
GlutinMouseInputEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
GlutinMouseInputEvent >> state [
	"This method was automatically generated"
	^GlutinEventInputElementState fromInteger: (handle unsignedLongAt: OFFSET_STATE)
]

{ #category : #'accessing structure variables' }
GlutinMouseInputEvent >> state: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_STATE put: anObject value
]
