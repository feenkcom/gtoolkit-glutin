Class {
	#name : #Winit30WindowEventModifiersChanged,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_ALT',
		'OFFSET_CTRL',
		'OFFSET_LOGO',
		'OFFSET_SHIFT'
	],
	#category : #'Winit-External'
}

{ #category : #'as yet unclassified' }
Winit30WindowEventModifiersChanged class >> eventType [
	^ WinitEventType Winit30_WindowEventModifiersChanged
]

{ #category : #'as yet unclassified' }
Winit30WindowEventModifiersChanged class >> fieldsDesc [
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

{ #category : #'as yet unclassified' }
Winit30WindowEventModifiersChanged class >> fromBaseEvent: anEvent [
	^ anEvent modifiers
]

{ #category : #'as yet unclassified' }
Winit30WindowEventModifiersChanged >> accept: aVisitor [
	^ aVisitor visitModifiersChanged: self
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> alt [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_ALT
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> alt: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_ALT put: anObject
]

{ #category : #'as yet unclassified' }
Winit30WindowEventModifiersChanged >> copy [
	^ super copy
		alt: self alt;
		ctrl: self ctrl;
		logo: self logo;
		shift: self shift;
		yourself
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> ctrl [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_CTRL
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> ctrl: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_CTRL put: anObject
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> logo [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_LOGO
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> logo: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_LOGO put: anObject
]

{ #category : #'as yet unclassified' }
Winit30WindowEventModifiersChanged >> printOn: aStream [
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

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> shift [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_SHIFT
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> shift: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_SHIFT put: anObject
]
