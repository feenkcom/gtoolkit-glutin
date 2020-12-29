Class {
	#name : #WinitMouseInputEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_BUTTON',
		'OFFSET_DEVICE_ID',
		'OFFSET_STATE'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitMouseInputEvent class >> eventType [
	^ WinitEventType WindowEventMouseInput
]

{ #category : #'field definition' }
WinitMouseInputEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		WinitEventInputElementState state
		WinitEventMouseButton button
 	)
]

{ #category : #'event type' }
WinitMouseInputEvent class >> fromBaseEvent: anEvent [
	^ anEvent mouse_input windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitMouseInputEvent >> accept: aVisitor [
	^ aVisitor visitMouseInputEvent: self
]

{ #category : #'accessing structure variables' }
WinitMouseInputEvent >> button [
	"This method was automatically generated"
	^ WinitEventMouseButton fromHandle: (handle referenceStructAt: OFFSET_BUTTON length: WinitEventMouseButton byteSize)
]

{ #category : #'accessing structure variables' }
WinitMouseInputEvent >> button: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_BUTTON put: anObject getHandle length: WinitEventMouseButton byteSize
]

{ #category : #copying }
WinitMouseInputEvent >> copy [
	^ super copy
		button: self button;
		device_id: self device_id;
		state: self state;
		yourself
]

{ #category : #'accessing structure variables' }
WinitMouseInputEvent >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing structure variables' }
WinitMouseInputEvent >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'accessing structure variables' }
WinitMouseInputEvent >> state [
	"This method was automatically generated"
	^WinitEventInputElementState fromInteger: (handle unsignedLongAt: OFFSET_STATE)
]

{ #category : #'accessing structure variables' }
WinitMouseInputEvent >> state: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_STATE put: anObject value
]
