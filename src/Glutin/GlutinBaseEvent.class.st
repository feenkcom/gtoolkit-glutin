Class {
	#name : #GlutinBaseEvent,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_CURSOR_MOVED',
		'OFFSET_EVENT_TYPE',
		'OFFSET_KEYBOARD_INPUT',
		'OFFSET_MOUSE_INPUT',
		'OFFSET_MOUSE_WHEEL',
		'OFFSET_RECEIVED_CHARACTER',
		'OFFSET_TOUCH',
		'OFFSET_WINDOW_FOCUSED',
		'OFFSET_WINDOW_ID',
		'OFFSET_WINDOW_MOVED',
		'OFFSET_WINDOW_RESIZED'
	],
	#classInstVars : [
		'EventTypeMap'
	],
	#category : #'Glutin-Events'
}

{ #category : #accessing }
GlutinBaseEvent class >> eventMap [
	^ EventTypeMap
]

{ #category : #'field definition' }
GlutinBaseEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		WinitSizeU64 window_id
		WinitEventType event_type
		#GlutinBaseTouchEvent touch
		#GlutinBaseMouseWheelEvent mouse_wheel
		GlutinBaseMouseInputEvent mouse_input
		GlutinBaseCursorMovedEvent cursor_moved
		GlutinBaseKeyboardInputEvent keyboard_input
		GlutinBaseReceivedCharacterEvent received_character
		#GlutinBaseWindowResizedEvent window_resized
		#GlutinBaseWindowMovedEvent window_moved
		GlutinBaseWindowFocusedEvent window_focused
 	)
]

{ #category : #initialization }
GlutinBaseEvent class >> initialize [
	self initializeEventTypeMap
]

{ #category : #initialization }
GlutinBaseEvent class >> initializeEventTypeMap [
	<script: 'self initializeEventTypeMap'>

	EventTypeMap := Dictionary new.
	GlutinMappedEvent allSubclassesDo: [ :cls |
		| eventType |
		eventType := cls eventType.
		eventType ifNotNil: [ EventTypeMap at: eventType put: cls ] ]
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> cursor_moved [
	"This method was automatically generated"
	^ GlutinBaseCursorMovedEvent fromHandle: (handle referenceStructAt: OFFSET_CURSOR_MOVED length: GlutinBaseCursorMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> cursor_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CURSOR_MOVED put: anObject getHandle length: GlutinBaseCursorMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> event_type [
	"This method was automatically generated"
	^WinitEventType fromInteger: (handle unsignedLongAt: OFFSET_EVENT_TYPE)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> event_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_EVENT_TYPE put: anObject value
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> keyboard_input [
	"This method was automatically generated"
	^ GlutinBaseKeyboardInputEvent fromHandle: (handle referenceStructAt: OFFSET_KEYBOARD_INPUT length: GlutinBaseKeyboardInputEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> keyboard_input: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_KEYBOARD_INPUT put: anObject getHandle length: GlutinBaseKeyboardInputEvent byteSize
]

{ #category : #accessing }
GlutinBaseEvent >> mapped [
	^ (self class eventMap at: self event_type ifAbsent: [ GlutinUnknownEvent ]) fromBaseEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> mouse_input [
	"This method was automatically generated"
	^ GlutinBaseMouseInputEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_INPUT length: GlutinBaseMouseInputEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> mouse_input: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_INPUT put: anObject getHandle length: GlutinBaseMouseInputEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> mouse_wheel [
	"This method was automatically generated"
	^ GlutinBaseMouseWheelEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_WHEEL length: GlutinBaseMouseWheelEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> mouse_wheel: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_WHEEL put: anObject getHandle length: GlutinBaseMouseWheelEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> received_character [
	"This method was automatically generated"
	^ GlutinBaseReceivedCharacterEvent fromHandle: (handle referenceStructAt: OFFSET_RECEIVED_CHARACTER length: GlutinBaseReceivedCharacterEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> received_character: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_RECEIVED_CHARACTER put: anObject getHandle length: GlutinBaseReceivedCharacterEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> touch [
	"This method was automatically generated"
	^ GlutinBaseTouchEvent fromHandle: (handle referenceStructAt: OFFSET_TOUCH length: GlutinBaseTouchEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> touch: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TOUCH put: anObject getHandle length: GlutinBaseTouchEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_focused [
	"This method was automatically generated"
	^ GlutinBaseWindowFocusedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_FOCUSED length: GlutinBaseWindowFocusedEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_focused: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_FOCUSED put: anObject getHandle length: GlutinBaseWindowFocusedEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_id [
	"This method was automatically generated"
	^ WinitSizeU64 fromHandle: (handle referenceStructAt: OFFSET_WINDOW_ID length: WinitSizeU64 byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_id: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_ID put: anObject getHandle length: WinitSizeU64 byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_moved [
	"This method was automatically generated"
	^ GlutinBaseWindowMovedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_MOVED length: GlutinBaseWindowMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_MOVED put: anObject getHandle length: GlutinBaseWindowMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_resized [
	"This method was automatically generated"
	^ GlutinBaseWindowResizedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_RESIZED length: GlutinBaseWindowResizedEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_resized: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_RESIZED put: anObject getHandle length: GlutinBaseWindowResizedEvent byteSize
]
