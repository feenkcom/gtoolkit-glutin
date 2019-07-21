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
		#GlutinSizeU64 window_id
		#GlutinEventType event_type
		#GlutinTouchEvent touch
		#GlutinMouseWheelEvent mouse_wheel
		#GlutinMouseInputEvent mouse_input
		#GlutinCursorMovedEvent cursor_moved
		#GlutinKeyboardInputEvent keyboard_input
		#GlutinReceivedCharacterEvent received_character
		#GlutinWindowResizedEvent window_resized
		#GlutinWindowMovedEvent window_moved
		#GlutinWindowFocusedEvent window_focused
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
	^ GlutinCursorMovedEvent fromHandle: (handle referenceStructAt: OFFSET_CURSOR_MOVED length: GlutinCursorMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> cursor_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CURSOR_MOVED put: anObject getHandle length: GlutinCursorMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> event_type [
	"This method was automatically generated"
	^GlutinEventType fromInteger: (handle unsignedLongAt: OFFSET_EVENT_TYPE)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> event_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_EVENT_TYPE put: anObject value
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> keyboard_input [
	"This method was automatically generated"
	^ GlutinKeyboardInputEvent fromHandle: (handle referenceStructAt: OFFSET_KEYBOARD_INPUT length: GlutinKeyboardInputEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> keyboard_input: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_KEYBOARD_INPUT put: anObject getHandle length: GlutinKeyboardInputEvent byteSize
]

{ #category : #accessing }
GlutinBaseEvent >> mapped [
	^ (self class eventMap at: self event_type ifAbsent: [ GlutinUnknownEvent ]) fromBaseEvent: self
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> mouse_input [
	"This method was automatically generated"
	^ GlutinMouseInputEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_INPUT length: GlutinMouseInputEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> mouse_input: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_INPUT put: anObject getHandle length: GlutinMouseInputEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> mouse_wheel [
	"This method was automatically generated"
	^ GlutinMouseWheelEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_WHEEL length: GlutinMouseWheelEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> mouse_wheel: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_WHEEL put: anObject getHandle length: GlutinMouseWheelEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> received_character [
	"This method was automatically generated"
	^ GlutinReceivedCharacterEvent fromHandle: (handle referenceStructAt: OFFSET_RECEIVED_CHARACTER length: GlutinReceivedCharacterEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> received_character: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_RECEIVED_CHARACTER put: anObject getHandle length: GlutinReceivedCharacterEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> touch [
	"This method was automatically generated"
	^ GlutinTouchEvent fromHandle: (handle referenceStructAt: OFFSET_TOUCH length: GlutinTouchEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> touch: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TOUCH put: anObject getHandle length: GlutinTouchEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_focused [
	"This method was automatically generated"
	^ GlutinWindowFocusedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_FOCUSED length: GlutinWindowFocusedEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_focused: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_FOCUSED put: anObject getHandle length: GlutinWindowFocusedEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_id [
	"This method was automatically generated"
	^ GlutinSizeU64 fromHandle: (handle referenceStructAt: OFFSET_WINDOW_ID length: GlutinSizeU64 byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_id: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_ID put: anObject getHandle length: GlutinSizeU64 byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_moved [
	"This method was automatically generated"
	^ GlutinWindowMovedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_MOVED length: GlutinWindowMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_MOVED put: anObject getHandle length: GlutinWindowMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_resized [
	"This method was automatically generated"
	^ GlutinWindowResizedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_RESIZED length: GlutinWindowResizedEvent byteSize)
]

{ #category : #'accessing structure variables' }
GlutinBaseEvent >> window_resized: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_RESIZED put: anObject getHandle length: GlutinWindowResizedEvent byteSize
]
