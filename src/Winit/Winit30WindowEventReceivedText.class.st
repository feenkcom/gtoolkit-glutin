Class {
	#name : #Winit30WindowEventReceivedText,
	#superclass : #GlutinWindowEvent,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#instVars : [
		'text'
	],
	#classVars : [
		'OFFSET_TEXTPOINTER'
	],
	#category : #'Winit-External'
}

{ #category : #'as yet unclassified' }
Winit30WindowEventReceivedText class >> eventType [
	^ WinitEventType Winit30_WindowEventReceivedText
]

{ #category : #'as yet unclassified' }
Winit30WindowEventReceivedText class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		void* textPointer
 	)
]

{ #category : #'as yet unclassified' }
Winit30WindowEventReceivedText >> accept: aVisitor [
	^ aVisitor visitCharacterReceivedEvent: self
]

{ #category : #'as yet unclassified' }
Winit30WindowEventReceivedText >> copy [
	^ super copy
		text: self text;
		yourself
]

{ #category : #'as yet unclassified' }
Winit30WindowEventReceivedText >> text [
	^ text ifNil: [
		text := self class ffiLibrary
			unsafeStringFromHandle: self textPointer getHandle
			during:  [ :aStringBox | aStringBox string ] ]
]

{ #category : #'as yet unclassified' }
Winit30WindowEventReceivedText >> text: aStringOrNil [
	text := aStringOrNil
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventReceivedText >> textPointer [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXTPOINTER) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventReceivedText >> textPointer: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXTPOINTER put: anObject getHandle.
]
