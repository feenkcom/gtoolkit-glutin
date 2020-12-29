Class {
	#name : #WinitEventModifiersState,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ALT',
		'OFFSET_CTRL',
		'OFFSET_LOGO',
		'OFFSET_SHIFT'
	],
	#category : #'Winit-Structures'
}

{ #category : #'field definition' }
WinitEventModifiersState class >> fieldsDesc [
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

{ #category : #'accessing structure variables' }
WinitEventModifiersState >> alt [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_ALT
]

{ #category : #'accessing structure variables' }
WinitEventModifiersState >> alt: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_ALT put: anObject
]

{ #category : #copying }
WinitEventModifiersState >> copy [
	^ self class new
		alt: self alt;
		ctrl: self ctrl;
		logo: self logo;
		shift: self shift
]

{ #category : #'accessing structure variables' }
WinitEventModifiersState >> ctrl [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_CTRL
]

{ #category : #'accessing structure variables' }
WinitEventModifiersState >> ctrl: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_CTRL put: anObject
]

{ #category : #'accessing structure variables' }
WinitEventModifiersState >> logo [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_LOGO
]

{ #category : #'accessing structure variables' }
WinitEventModifiersState >> logo: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_LOGO put: anObject
]

{ #category : #printing }
WinitEventModifiersState >> printOn: aStream [
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
WinitEventModifiersState >> shift [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_SHIFT
]

{ #category : #'accessing structure variables' }
WinitEventModifiersState >> shift: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_SHIFT put: anObject
]
