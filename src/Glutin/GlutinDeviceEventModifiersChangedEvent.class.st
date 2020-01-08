Class {
	#name : #GlutinDeviceEventModifiersChangedEvent,
	#superclass : #GlutinDeviceEvent,
	#classVars : [
		'OFFSET_ALT',
		'OFFSET_CTRL',
		'OFFSET_LOGO',
		'OFFSET_SHIFT'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinDeviceEventModifiersChangedEvent class >> eventType [
	^ GlutinEventType ModifiersChanged
]

{ #category : #'field definition' }
GlutinDeviceEventModifiersChangedEvent class >> fieldsDesc [
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
GlutinDeviceEventModifiersChangedEvent class >> fromBaseEvent: anEvent [
	^ anEvent modifiers
]

{ #category : #visiting }
GlutinDeviceEventModifiersChangedEvent >> accept: aVisitor [
	^ aVisitor visitModifiersChanged: self
]

{ #category : #'accessing structure variables' }
GlutinDeviceEventModifiersChangedEvent >> alt [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_ALT
]

{ #category : #'accessing structure variables' }
GlutinDeviceEventModifiersChangedEvent >> alt: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_ALT put: anObject
]

{ #category : #copying }
GlutinDeviceEventModifiersChangedEvent >> copy [
	^ self class new
		alt: self alt;
		ctrl: self ctrl;
		logo: self logo;
		shift: self shift
]

{ #category : #'accessing structure variables' }
GlutinDeviceEventModifiersChangedEvent >> ctrl [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_CTRL
]

{ #category : #'accessing structure variables' }
GlutinDeviceEventModifiersChangedEvent >> ctrl: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_CTRL put: anObject
]

{ #category : #'accessing structure variables' }
GlutinDeviceEventModifiersChangedEvent >> logo [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_LOGO
]

{ #category : #'accessing structure variables' }
GlutinDeviceEventModifiersChangedEvent >> logo: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_LOGO put: anObject
]

{ #category : #printing }
GlutinDeviceEventModifiersChangedEvent >> printOn: aStream [
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
GlutinDeviceEventModifiersChangedEvent >> shift [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_SHIFT
]

{ #category : #'accessing structure variables' }
GlutinDeviceEventModifiersChangedEvent >> shift: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_SHIFT put: anObject
]
