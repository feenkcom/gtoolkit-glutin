Class {
	#name : #Winit30WindowEventModifiersChanged,
	#superclass : #GlutinWindowEvent,
	#classVars : [
		'OFFSET_ALT',
		'OFFSET_CTRL',
		'OFFSET_LEFTALT',
		'OFFSET_LEFTCTRL',
		'OFFSET_LEFTLOGO',
		'OFFSET_LEFTSHIFT',
		'OFFSET_LOGO',
		'OFFSET_RIGHTALT',
		'OFFSET_RIGHTCTRL',
		'OFFSET_RIGHTLOGO',
		'OFFSET_RIGHTSHIFT',
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
		Winit30ModifierKeyState leftShift
		Winit30ModifierKeyState rightShift
		Winit30ModifierKeyState leftCtrl
		Winit30ModifierKeyState rightCtrl
		Winit30ModifierKeyState leftAlt
		Winit30ModifierKeyState rightAlt
		Winit30ModifierKeyState leftLogo
		Winit30ModifierKeyState rightLogo
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
		shift: self shift;
		ctrl: self ctrl;
		alt: self alt;
		logo: self logo;
		leftShift: self leftShift;
		rightShift: self rightShift;
		leftCtrl: self leftCtrl;
		rightCtrl: self rightCtrl;
		leftAlt: self leftAlt;
		leftLogo: self leftLogo;
		rightLogo: self rightLogo;
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

{ #category : #views }
Winit30WindowEventModifiersChanged >> gtModifiersFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Modifiers';
		priority: 5;
		items: [ {'shift' -> self shift.
				'ctrl' -> self ctrl.
				'alt' -> self alt.
				'logo' -> self logo} ];
		column: 'Property' text: [ :each | each key ];
		column: 'Value' text: [ :each | each value ];
		send: [ :each | each value ]
]

{ #category : #views }
Winit30WindowEventModifiersChanged >> gtStateFor: aView [
	<gtView>
	^ aView columnedList
		title: 'State';
		priority: 7;
		items: [ {'Left shift' -> self leftShift.
				'Right shift' -> self rightShift.
				'Left ctrl' -> self leftCtrl.
				'Right ctrl' -> self rightCtrl.
				'Left alt' -> self leftAlt.
				'Right alt' -> self rightAlt.
				'Left logo' -> self leftLogo.
				'Right logo' -> self rightLogo} ];
		column: 'Property' text: [ :each | each key ];
		column: 'Value' text: [ :each | each value item ];
		send: [ :each | each value ]
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> leftAlt [
	"This method was automatically generated"
	^Winit30ModifierKeyState fromInteger: (handle unsignedByteAt: OFFSET_LEFTALT)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> leftAlt: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_LEFTALT put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> leftCtrl [
	"This method was automatically generated"
	^Winit30ModifierKeyState fromInteger: (handle unsignedByteAt: OFFSET_LEFTCTRL)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> leftCtrl: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_LEFTCTRL put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> leftLogo [
	"This method was automatically generated"
	^Winit30ModifierKeyState fromInteger: (handle unsignedByteAt: OFFSET_LEFTLOGO)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> leftLogo: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_LEFTLOGO put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> leftShift [
	"This method was automatically generated"
	^Winit30ModifierKeyState fromInteger: (handle unsignedByteAt: OFFSET_LEFTSHIFT)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> leftShift: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_LEFTSHIFT put: anObject value
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
Winit30WindowEventModifiersChanged >> rightAlt [
	"This method was automatically generated"
	^Winit30ModifierKeyState fromInteger: (handle unsignedByteAt: OFFSET_RIGHTALT)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> rightAlt: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_RIGHTALT put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> rightCtrl [
	"This method was automatically generated"
	^Winit30ModifierKeyState fromInteger: (handle unsignedByteAt: OFFSET_RIGHTCTRL)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> rightCtrl: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_RIGHTCTRL put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> rightLogo [
	"This method was automatically generated"
	^Winit30ModifierKeyState fromInteger: (handle unsignedByteAt: OFFSET_RIGHTLOGO)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> rightLogo: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_RIGHTLOGO put: anObject value
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> rightShift [
	"This method was automatically generated"
	^Winit30ModifierKeyState fromInteger: (handle unsignedByteAt: OFFSET_RIGHTSHIFT)
]

{ #category : #'accessing - structure variables' }
Winit30WindowEventModifiersChanged >> rightShift: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_RIGHTSHIFT put: anObject value
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
