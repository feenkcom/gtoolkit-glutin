Class {
	#name : #GlutinBaseReceivedCharacterEvent,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_BYTE_1',
		'OFFSET_BYTE_2',
		'OFFSET_BYTE_3',
		'OFFSET_BYTE_4',
		'OFFSET_LENGTH'
	],
	#category : #'Glutin-Events'
}

{ #category : #'event type' }
GlutinBaseReceivedCharacterEvent class >> eventType [
	^ GlutinEventType WindowEventReceivedCharacter
]

{ #category : #'field definition' }
GlutinBaseReceivedCharacterEvent class >> fieldsDesc [
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
GlutinBaseReceivedCharacterEvent class >> fromBaseEvent: anEvent [
	^ anEvent received_character
]

{ #category : #visiting }
GlutinBaseReceivedCharacterEvent >> accept: aVisitor [
	^ aVisitor visitCharacterReceivedEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> byte_1 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BYTE_1
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> byte_1: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BYTE_1 put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> byte_2 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BYTE_2
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> byte_2: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BYTE_2 put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> byte_3 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BYTE_3
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> byte_3: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BYTE_3 put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> byte_4 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_BYTE_4
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> byte_4: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_BYTE_4 put: anObject
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> length [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_LENGTH
]

{ #category : #'accessing structure variables' }
GlutinBaseReceivedCharacterEvent >> length: anObject [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_LENGTH put: anObject
]

{ #category : #accessing }
GlutinBaseReceivedCharacterEvent >> text [
	^ ((#[ 0 0 0 0 ]
		at: 1 put: self byte_1;
		at: 2 put: self byte_2;
		at: 3 put: self byte_3;
		at: 4 put: self byte_4;
		yourself) first: self length) utf8Decoded
]
