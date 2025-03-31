Class {
	#name : #Winit30WindowEventKeyboardInput,
	#superclass : #GlutinWindowEvent,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#instVars : [
		'characterKey'
	],
	#classVars : [
		'OFFSET_CHARACTERKEYPOINTER',
		'OFFSET_DEVICE_ID',
		'OFFSET_ISSYNTHETIC',
		'OFFSET_KEYLOCATION',
		'OFFSET_KEYTYPE',
		'OFFSET_NAMEDKEY',
		'OFFSET_SCANCODE',
		'OFFSET_STATE'
	],
	#category : #'Winit-External'
}

{ #category : #'as yet unclassified' }
Winit30WindowEventKeyboardInput class >> eventType [
	^ WinitEventType Winit30_WindowEventKeyboardInput
]

{ #category : #'as yet unclassified' }
Winit30WindowEventKeyboardInput class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		int64 device_id
		uint32 scanCode
		WinitEventInputElementState state
		Winit30KeyType keyType
		Winit30KeyLocation keyLocation
		Winit30NamedKey namedKey
		void* characterKeyPointer
		bool isSynthetic
 	)
]

{ #category : #'as yet unclassified' }
Winit30WindowEventKeyboardInput class >> fromBaseEvent: anEvent [
	^ anEvent keyboard_input windowId: anEvent window_id asInteger
]

{ #category : #'as yet unclassified' }
Winit30WindowEventKeyboardInput >> accept: aVisitor [
	^ aVisitor visitKeyboardInputEvent: self
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> characterKey [
	^ characterKey ifNil: [
		characterKey := self class ffiLibrary
			unsafeStringFromHandle: self characterKeyPointer getHandle
			during:  [ :aStringBox | aStringBox string ] ]
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> characterKey: aStringOrNil [
	characterKey := aStringOrNil
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> characterKeyPointer [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_CHARACTERKEYPOINTER) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> characterKeyPointer: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CHARACTERKEYPOINTER put: anObject getHandle.
]

{ #category : #'as yet unclassified' }
Winit30WindowEventKeyboardInput >> copy [
	^ super copy
		device_id: self device_id;
		scanCode: self scanCode;
		state: self state;
		keyType: self keyType;
		keyLocation: self keyLocation;
		namedKey: self namedKey;
		characterKey: self characterKey;
		isSynthetic: self isSynthetic;
		yourself
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> device_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_DEVICE_ID
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> device_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_DEVICE_ID put: anObject
]

{ #category : #'as yet unclassified' }
Winit30WindowEventKeyboardInput >> has_virtual_keycode [
	"For compatibility with old winit events"
	^ false
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> isSynthetic [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_ISSYNTHETIC
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> isSynthetic: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_ISSYNTHETIC put: anObject
]

{ #category : #'as yet unclassified' }
Winit30WindowEventKeyboardInput >> key [
	self keyType = Winit30KeyType NamedType
		ifTrue: [
			^ Winit30KeyboardKey
				key: self namedKey
				location: self keyLocation ].
		
	self keyType = Winit30KeyType CharacterType
		ifTrue: [
			^ Winit30KeyboardKey
				key: self characterKey
				location: self keyLocation ].

	^ nil
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> keyLocation [
	"This method was automatically generated"
	^Winit30KeyLocation fromInteger: (handle unsignedByteAt: OFFSET_KEYLOCATION)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> keyLocation: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_KEYLOCATION put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> keyType [
	"This method was automatically generated"
	^Winit30KeyType fromInteger: (handle unsignedByteAt: OFFSET_KEYTYPE)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> keyType: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_KEYTYPE put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> namedKey [
	"This method was automatically generated"
	^Winit30NamedKey fromInteger: (handle unsignedLongAt: OFFSET_NAMEDKEY)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> namedKey: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_NAMEDKEY put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> scanCode [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SCANCODE
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> scanCode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SCANCODE put: anObject
]

{ #category : #'as yet unclassified' }
Winit30WindowEventKeyboardInput >> scan_code [
	"Compatibility with old winit event"

	^ self scanCode
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> state [
	"This method was automatically generated"
	^WinitEventInputElementState fromInteger: (handle unsignedLongAt: OFFSET_STATE)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventKeyboardInput >> state: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_STATE put: anObject value
]
