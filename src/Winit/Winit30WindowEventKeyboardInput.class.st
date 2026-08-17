Class {
	#name : #Winit30WindowEventKeyboardInput,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'device_id',
		'scanCode',
		'state',
		'keyType',
		'keyLocation',
		'namedKey',
		'characterKey',
		'isSynthetic'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
Winit30WindowEventKeyboardInput class >> eventType [
	^ WinitEventType Winit30_WindowEventKeyboardInput
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primCharacterKeyHandle: aHandle [
	^ self ffiCall: #(void* winit_event_keyboard_input_character_key(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primDeviceId: aHandle [
	^ self ffiCall: #(int64 winit_event_keyboard_input_device_id(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primIsSynthetic: aHandle [
	^ self ffiCall: #(bool winit_event_keyboard_input_is_synthetic(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primKeyLocation: aHandle [
	^ self ffiCall: #(uint8 winit_event_keyboard_input_key_location(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primKeyType: aHandle [
	^ self ffiCall: #(uint8 winit_event_keyboard_input_key_type(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primNamedKey: aHandle [
	^ self ffiCall: #(uint32 winit_event_keyboard_input_named_key(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_keyboard_input_release(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primScanCode: aHandle [
	^ self ffiCall: #(uint32 winit_event_keyboard_input_scan_code(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventKeyboardInput class >> primState: aHandle [
	^ self ffiCall: #(uint32 winit_event_keyboard_input_state(void* aHandle))
]

{ #category : #visiting }
Winit30WindowEventKeyboardInput >> accept: aVisitor [
	^ aVisitor visitKeyboardInputEvent: self
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> characterKey [
	^ characterKey
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> device_id [
	^ device_id
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> has_virtual_keycode [
	^ false
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> isSynthetic [
	^ isSynthetic
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> key [
	keyType = Winit30KeyType NamedType
		ifTrue: [
			^ Winit30KeyboardKey
				key: namedKey
				location: keyLocation ].

	keyType = Winit30KeyType CharacterType
		ifTrue: [
			^ Winit30KeyboardKey
				key: characterKey
				location: keyLocation ].

	^ nil
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> keyLocation [
	^ keyLocation
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> keyType [
	^ keyType
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> namedKey [
	^ namedKey
]

{ #category : #initialization }
Winit30WindowEventKeyboardInput >> readFromHandle: aHandle [
	| charHandle |

	device_id := self class primDeviceId: aHandle.
	scanCode := self class primScanCode: aHandle.
	state := WinitEventInputElementState fromInteger: (self class primState: aHandle).
	keyType := Winit30KeyType fromInteger: (self class primKeyType: aHandle).
	keyLocation := Winit30KeyLocation fromInteger: (self class primKeyLocation: aHandle).
	namedKey := Winit30NamedKey fromInteger: (self class primNamedKey: aHandle).
	isSynthetic := self class primIsSynthetic: aHandle.

	charHandle := self class primCharacterKeyHandle: aHandle.
	characterKey := charHandle isNull
		ifTrue: [ nil ]
		ifFalse: [
			GtStringBox
				fromOwnedHandle: charHandle
				library: self class ffiLibrary
				during: [ :s | s string ] ]
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> scanCode [
	^ scanCode
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> scan_code [
	^ scanCode
]

{ #category : #accessing }
Winit30WindowEventKeyboardInput >> state [
	^ state
]
