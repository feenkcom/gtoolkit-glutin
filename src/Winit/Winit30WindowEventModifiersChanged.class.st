Class {
	#name : #Winit30WindowEventModifiersChanged,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'shift',
		'ctrl',
		'alt',
		'logo',
		'numLock',
		'leftShift',
		'rightShift',
		'leftCtrl',
		'rightCtrl',
		'leftAlt',
		'rightAlt',
		'leftLogo',
		'rightLogo'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
Winit30WindowEventModifiersChanged class >> eventType [
	^ WinitEventType Winit30_WindowEventModifiersChanged
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primAlt: aHandle [
	^ self ffiCall: #(bool winit_event_modifiers_changed_alt(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primCtrl: aHandle [
	^ self ffiCall: #(bool winit_event_modifiers_changed_ctrl(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primLeftAlt: aHandle [
	^ self ffiCall: #(uint8 winit_event_modifiers_changed_left_alt(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primLeftCtrl: aHandle [
	^ self ffiCall: #(uint8 winit_event_modifiers_changed_left_ctrl(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primLeftLogo: aHandle [
	^ self ffiCall: #(uint8 winit_event_modifiers_changed_left_logo(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primLeftShift: aHandle [
	^ self ffiCall: #(uint8 winit_event_modifiers_changed_left_shift(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primLogo: aHandle [
	^ self ffiCall: #(bool winit_event_modifiers_changed_logo(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primNumLock: aHandle [
	^ self ffiCall: #(bool winit_event_modifiers_changed_num_lock(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_modifiers_changed_release(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primRightAlt: aHandle [
	^ self ffiCall: #(uint8 winit_event_modifiers_changed_right_alt(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primRightCtrl: aHandle [
	^ self ffiCall: #(uint8 winit_event_modifiers_changed_right_ctrl(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primRightLogo: aHandle [
	^ self ffiCall: #(uint8 winit_event_modifiers_changed_right_logo(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primRightShift: aHandle [
	^ self ffiCall: #(uint8 winit_event_modifiers_changed_right_shift(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventModifiersChanged class >> primShift: aHandle [
	^ self ffiCall: #(bool winit_event_modifiers_changed_shift(void* aHandle))
]

{ #category : #visiting }
Winit30WindowEventModifiersChanged >> accept: aVisitor [
	^ aVisitor visitModifiersChanged: self
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> alt [
	^ alt
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> ctrl [
	^ ctrl
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
				'logo' -> self logo.
				'numLock' -> self numLock} ];
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

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> leftAlt [
	^ leftAlt
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> leftCtrl [
	^ leftCtrl
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> leftLogo [
	^ leftLogo
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> leftShift [
	^ leftShift
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> logo [
	^ logo
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> numLock [
	^ numLock
]

{ #category : #printing }
Winit30WindowEventModifiersChanged >> printOn: aStream [
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
		print: self logo.
	aStream
		nextPutAll: ' numLock ';
		print: self numLock;
		nextPutAll: ' }'
]

{ #category : #initialization }
Winit30WindowEventModifiersChanged >> readFromHandle: aHandle [
	shift := self class primShift: aHandle.
	ctrl := self class primCtrl: aHandle.
	alt := self class primAlt: aHandle.
	logo := self class primLogo: aHandle.
	numLock := self class primNumLock: aHandle.
	leftShift := Winit30ModifierKeyState fromInteger: (self class primLeftShift: aHandle).
	rightShift := Winit30ModifierKeyState fromInteger: (self class primRightShift: aHandle).
	leftCtrl := Winit30ModifierKeyState fromInteger: (self class primLeftCtrl: aHandle).
	rightCtrl := Winit30ModifierKeyState fromInteger: (self class primRightCtrl: aHandle).
	leftAlt := Winit30ModifierKeyState fromInteger: (self class primLeftAlt: aHandle).
	rightAlt := Winit30ModifierKeyState fromInteger: (self class primRightAlt: aHandle).
	leftLogo := Winit30ModifierKeyState fromInteger: (self class primLeftLogo: aHandle).
	rightLogo := Winit30ModifierKeyState fromInteger: (self class primRightLogo: aHandle)
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> rightAlt [
	^ rightAlt
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> rightCtrl [
	^ rightCtrl
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> rightLogo [
	^ rightLogo
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> rightShift [
	^ rightShift
]

{ #category : #accessing }
Winit30WindowEventModifiersChanged >> shift [
	^ shift
]
