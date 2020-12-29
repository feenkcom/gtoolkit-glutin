Class {
	#name : #WinitReceivedCharacterEvent,
	#superclass : #WinitWindowEvent,
	#classVars : [
		'OFFSET_BYTE_1',
		'OFFSET_BYTE_2',
		'OFFSET_BYTE_3',
		'OFFSET_BYTE_4',
		'OFFSET_LENGTH'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
WinitReceivedCharacterEvent class >> eventType [
	^ WinitEventType WindowEventReceivedCharacter
]

{ #category : #'field definition' }
WinitReceivedCharacterEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		size_t length
		uint8 byte_1
		uint8 byte_2
		uint8 byte_3
		uint8 byte_4
 	)
]

{ #category : #'event type' }
WinitReceivedCharacterEvent class >> fromBaseEvent: anEvent [
	^ anEvent received_character windowId: anEvent window_id asInteger
]

{ #category : #visiting }
WinitReceivedCharacterEvent >> accept: aVisitor [
	^ aVisitor visitCharacterReceivedEvent: self
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> byte_1 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BYTE_1
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> byte_1: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BYTE_1 put: anObject
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> byte_2 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BYTE_2
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> byte_2: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BYTE_2 put: anObject
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> byte_3 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BYTE_3
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> byte_3: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BYTE_3 put: anObject
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> byte_4 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BYTE_4
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> byte_4: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BYTE_4 put: anObject
]

{ #category : #copying }
WinitReceivedCharacterEvent >> copy [
	^ super copy
		byte_1: self byte_1;
		byte_2: self byte_2;
		byte_3: self byte_3;
		byte_4: self byte_4;
		length: self length;
		yourself
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> length [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_LENGTH
]

{ #category : #'accessing structure variables' }
WinitReceivedCharacterEvent >> length: anObject [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_LENGTH put: anObject
]

{ #category : #accessing }
WinitReceivedCharacterEvent >> text [
	^ ((#[ 0 0 0 0 ]
		at: 1 put: self byte_1;
		at: 2 put: self byte_2;
		at: 3 put: self byte_3;
		at: 4 put: self byte_4;
		yourself) first: self length) utf8Decoded
]
