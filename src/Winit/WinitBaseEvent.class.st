Class {
	#name : #WinitBaseEvent,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_CURSOR_MOVED',
		'OFFSET_EVENT_TYPE',
		'OFFSET_KEYBOARD_INPUT',
		'OFFSET_MODIFIERS',
		'OFFSET_MOUSE_INPUT',
		'OFFSET_MOUSE_WHEEL',
		'OFFSET_RECEIVED_CHARACTER',
		'OFFSET_SCALE_FACTOR',
		'OFFSET_TOUCH',
		'OFFSET_USER_EVENT',
		'OFFSET_WINDOW_FOCUSED',
		'OFFSET_WINDOW_ID',
		'OFFSET_WINDOW_MOVED',
		'OFFSET_WINDOW_RESIZED'
	],
	#classInstVars : [
		'EventTypeMap'
	],
	#category : #'Winit-Events'
}

{ #category : #accessing }
WinitBaseEvent class >> eventMap [
	^ EventTypeMap
]

{ #category : #'field definition' }
WinitBaseEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		GtBoxerUint128Structure window_id
		WinitEventType event_type
		WinitTouchEvent touch
		WinitMouseWheelEvent mouse_wheel
		WinitMouseInputEvent mouse_input
		WinitCursorMovedEvent cursor_moved
		WinitKeyboardInputEvent keyboard_input
		WinitReceivedCharacterEvent received_character
		WinitWindowResizedEvent window_resized
		WinitWindowScaleFactorChangedEvent scale_factor
		WinitWindowMovedEvent window_moved
		WinitWindowFocusedEvent window_focused
		WinitDeviceEventModifiersChangedEvent modifiers
		WinitUserEvent user_event
 	)
]

{ #category : #initialization }
WinitBaseEvent class >> initialize [
	self initializeEventTypeMap
]

{ #category : #initialization }
WinitBaseEvent class >> initializeEventTypeMap [
	<script: 'self initializeEventTypeMap'>

	EventTypeMap := Dictionary new.
	WinitMappedEvent allSubclassesDo: [ :cls |
		| eventType |
		eventType := cls eventType.
		eventType ifNotNil: [ EventTypeMap at: eventType put: cls ] ]
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> cursor_moved [
	"This method was automatically generated"
	^ WinitCursorMovedEvent fromHandle: (handle referenceStructAt: OFFSET_CURSOR_MOVED length: WinitCursorMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> cursor_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CURSOR_MOVED put: anObject getHandle length: WinitCursorMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> event_type [
	"This method was automatically generated"
	^WinitEventType fromInteger: (handle unsignedLongAt: OFFSET_EVENT_TYPE)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> event_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_EVENT_TYPE put: anObject value
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> keyboard_input [
	"This method was automatically generated"
	^ WinitKeyboardInputEvent fromHandle: (handle referenceStructAt: OFFSET_KEYBOARD_INPUT length: WinitKeyboardInputEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> keyboard_input: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_KEYBOARD_INPUT put: anObject getHandle length: WinitKeyboardInputEvent byteSize
]

{ #category : #accessing }
WinitBaseEvent >> mapped [	
	^ (self class eventMap at: self event_type ifAbsent: [ WinitUnknownEvent ]) fromBaseEvent: self
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> modifiers [
	"This method was automatically generated"
	^ WinitDeviceEventModifiersChangedEvent fromHandle: (handle referenceStructAt: OFFSET_MODIFIERS length: WinitDeviceEventModifiersChangedEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> modifiers: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MODIFIERS put: anObject getHandle length: WinitDeviceEventModifiersChangedEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> mouse_input [
	"This method was automatically generated"
	^ WinitMouseInputEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_INPUT length: WinitMouseInputEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> mouse_input: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_INPUT put: anObject getHandle length: WinitMouseInputEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> mouse_wheel [
	"This method was automatically generated"
	^ WinitMouseWheelEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_WHEEL length: WinitMouseWheelEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> mouse_wheel: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_WHEEL put: anObject getHandle length: WinitMouseWheelEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> received_character [
	"This method was automatically generated"
	^ WinitReceivedCharacterEvent fromHandle: (handle referenceStructAt: OFFSET_RECEIVED_CHARACTER length: WinitReceivedCharacterEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> received_character: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_RECEIVED_CHARACTER put: anObject getHandle length: WinitReceivedCharacterEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> scale_factor [
	"This method was automatically generated"
	^ WinitWindowScaleFactorChangedEvent fromHandle: (handle referenceStructAt: OFFSET_SCALE_FACTOR length: WinitWindowScaleFactorChangedEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> scale_factor: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SCALE_FACTOR put: anObject getHandle length: WinitWindowScaleFactorChangedEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> touch [
	"This method was automatically generated"
	^ WinitTouchEvent fromHandle: (handle referenceStructAt: OFFSET_TOUCH length: WinitTouchEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> touch: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TOUCH put: anObject getHandle length: WinitTouchEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> user_event [
	"This method was automatically generated"
	^ WinitUserEvent fromHandle: (handle referenceStructAt: OFFSET_USER_EVENT length: WinitUserEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> user_event: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_USER_EVENT put: anObject getHandle length: WinitUserEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_focused [
	"This method was automatically generated"
	^ WinitWindowFocusedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_FOCUSED length: WinitWindowFocusedEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_focused: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_FOCUSED put: anObject getHandle length: WinitWindowFocusedEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_id [
	"This method was automatically generated"
	^ GtBoxerUint128Structure fromHandle: (handle referenceStructAt: OFFSET_WINDOW_ID length: GtBoxerUint128Structure byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_id: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_ID put: anObject getHandle length: GtBoxerUint128Structure byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_moved [
	"This method was automatically generated"
	^ WinitWindowMovedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_MOVED length: WinitWindowMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_MOVED put: anObject getHandle length: WinitWindowMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_resized [
	"This method was automatically generated"
	^ WinitWindowResizedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_RESIZED length: WinitWindowResizedEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_resized: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_RESIZED put: anObject getHandle length: WinitWindowResizedEvent byteSize
]
