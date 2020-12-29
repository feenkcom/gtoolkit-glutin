Class {
	#name : #WinitDeviceEventModifiersChangedEvent,
	#superclass : #WinitDeviceEvent,
	#classVars : [
		'OFFSET_ALT',
		'OFFSET_CTRL',
		'OFFSET_LOGO',
		'OFFSET_SHIFT'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitDeviceEventModifiersChangedEvent class >> eventType [
	^ WinitEventType ModifiersChanged
]

{ #category : #'field definition' }
WinitDeviceEventModifiersChangedEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		bool shift
		bool ctrl
		bool alt
		bool logo
 	)
]

{ #category : #'event type' }
WinitDeviceEventModifiersChangedEvent class >> fromBaseEvent: anEvent [
	^ anEvent modifiers
]

{ #category : #visiting }
WinitDeviceEventModifiersChangedEvent >> accept: aVisitor [
	^ aVisitor visitModifiersChanged: self
]

{ #category : #'accessing structure variables' }
WinitDeviceEventModifiersChangedEvent >> alt [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_ALT
]

{ #category : #'accessing structure variables' }
WinitDeviceEventModifiersChangedEvent >> alt: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_ALT put: anObject
]

{ #category : #copying }
WinitDeviceEventModifiersChangedEvent >> copy [
	^ super copy
		alt: self alt;
		ctrl: self ctrl;
		logo: self logo;
		shift: self shift;
		yourself
]

{ #category : #'accessing structure variables' }
WinitDeviceEventModifiersChangedEvent >> ctrl [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_CTRL
]

{ #category : #'accessing structure variables' }
WinitDeviceEventModifiersChangedEvent >> ctrl: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_CTRL put: anObject
]

{ #category : #'accessing structure variables' }
WinitDeviceEventModifiersChangedEvent >> logo [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_LOGO
]

{ #category : #'accessing structure variables' }
WinitDeviceEventModifiersChangedEvent >> logo: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_LOGO put: anObject
]

{ #category : #printing }
WinitDeviceEventModifiersChangedEvent >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	aStream
		nextPutAll: '{ shift: ';
		print: self shift.
	aStream
		nextPutAll: ' alt: ';
		print: self alt.
	aStream
		nextPutAll: ' ctrl: ';
		print: self ctrl.
	aStream
		nextPutAll: ' logo: ';
		print: self logo;
		nextPutAll: ' }'
]

{ #category : #'accessing structure variables' }
WinitDeviceEventModifiersChangedEvent >> shift [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_SHIFT
]

{ #category : #'accessing structure variables' }
WinitDeviceEventModifiersChangedEvent >> shift: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_SHIFT put: anObject
]
