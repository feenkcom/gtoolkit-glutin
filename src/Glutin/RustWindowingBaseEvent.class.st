Class {
	#name : #RustWindowingBaseEvent,
	#superclass : #GtBoxerExternalStructure,
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
	#category : #'Glutin-Events'
}

{ #category : #accessing }
RustWindowingBaseEvent class >> eventMap [
	^ EventTypeMap
]

{ #category : #'field definition' }
RustWindowingBaseEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		GtBoxerUint128Structure window_id
		#WinitEventType event_type
		GlutinTouchEvent touch
		GlutinMouseWheelEvent mouse_wheel
		GlutinMouseInputEvent mouse_input
		GlutinCursorMovedEvent cursor_moved
		GlutinKeyboardInputEvent keyboard_input
		GlutinReceivedCharacterEvent received_character
		GlutinWindowResizedEvent window_resized
		GlutinWindowScaleFactorChangedEvent scale_factor
		GlutinWindowMovedEvent window_moved
		GlutinWindowFocusedEvent window_focused
		GlutinDeviceEventModifiersChangedEvent modifiers
		GlutinUserEvent user_event
 	)
]

{ #category : #initialization }
RustWindowingBaseEvent class >> initialize [
	self initializeEventTypeMap
]

{ #category : #initialization }
RustWindowingBaseEvent class >> initializeEventTypeMap [
	<script: 'self initializeEventTypeMap'>

	EventTypeMap := Dictionary new.
	GlutinMappedEvent allSubclassesDo: [ :cls |
		| eventType |
		eventType := cls eventType.
		eventType ifNotNil: [ EventTypeMap at: eventType put: cls ] ]
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> cursor_moved [
	"This method was automatically generated"
	^ GlutinCursorMovedEvent fromHandle: (handle referenceStructAt: OFFSET_CURSOR_MOVED length: GlutinCursorMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> cursor_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_CURSOR_MOVED put: anObject getHandle length: GlutinCursorMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> event_type [
	"This method was automatically generated"
	^WinitEventType fromInteger: (handle unsignedLongAt: OFFSET_EVENT_TYPE)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> event_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_EVENT_TYPE put: anObject value
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> keyboard_input [
	"This method was automatically generated"
	^ GlutinKeyboardInputEvent fromHandle: (handle referenceStructAt: OFFSET_KEYBOARD_INPUT length: GlutinKeyboardInputEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> keyboard_input: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_KEYBOARD_INPUT put: anObject getHandle length: GlutinKeyboardInputEvent byteSize
]

{ #category : #accessing }
RustWindowingBaseEvent >> mapped [	
	^ (self class eventMap at: self event_type ifAbsent: [ GlutinUnknownEvent ]) fromBaseEvent: self
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> modifiers [
	"This method was automatically generated"
	^ GlutinDeviceEventModifiersChangedEvent fromHandle: (handle referenceStructAt: OFFSET_MODIFIERS length: GlutinDeviceEventModifiersChangedEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> modifiers: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MODIFIERS put: anObject getHandle length: GlutinDeviceEventModifiersChangedEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> mouse_input [
	"This method was automatically generated"
	^ GlutinMouseInputEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_INPUT length: GlutinMouseInputEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> mouse_input: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_INPUT put: anObject getHandle length: GlutinMouseInputEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> mouse_wheel [
	"This method was automatically generated"
	^ GlutinMouseWheelEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_WHEEL length: GlutinMouseWheelEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> mouse_wheel: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_WHEEL put: anObject getHandle length: GlutinMouseWheelEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> received_character [
	"This method was automatically generated"
	^ GlutinReceivedCharacterEvent fromHandle: (handle referenceStructAt: OFFSET_RECEIVED_CHARACTER length: GlutinReceivedCharacterEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> received_character: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_RECEIVED_CHARACTER put: anObject getHandle length: GlutinReceivedCharacterEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> scale_factor [
	"This method was automatically generated"
	^ GlutinWindowScaleFactorChangedEvent fromHandle: (handle referenceStructAt: OFFSET_SCALE_FACTOR length: GlutinWindowScaleFactorChangedEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> scale_factor: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SCALE_FACTOR put: anObject getHandle length: GlutinWindowScaleFactorChangedEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> touch [
	"This method was automatically generated"
	^ GlutinTouchEvent fromHandle: (handle referenceStructAt: OFFSET_TOUCH length: GlutinTouchEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> touch: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TOUCH put: anObject getHandle length: GlutinTouchEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> user_event [
	"This method was automatically generated"
	^ GlutinUserEvent fromHandle: (handle referenceStructAt: OFFSET_USER_EVENT length: GlutinUserEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> user_event: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_USER_EVENT put: anObject getHandle length: GlutinUserEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> window_focused [
	"This method was automatically generated"
	^ GlutinWindowFocusedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_FOCUSED length: GlutinWindowFocusedEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> window_focused: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_FOCUSED put: anObject getHandle length: GlutinWindowFocusedEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> window_id [
	"This method was automatically generated"
	^ GtBoxerUint128Structure fromHandle: (handle referenceStructAt: OFFSET_WINDOW_ID length: GtBoxerUint128Structure byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> window_id: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_ID put: anObject getHandle length: GtBoxerUint128Structure byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> window_moved [
	"This method was automatically generated"
	^ GlutinWindowMovedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_MOVED length: GlutinWindowMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> window_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_MOVED put: anObject getHandle length: GlutinWindowMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> window_resized [
	"This method was automatically generated"
	^ GlutinWindowResizedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_RESIZED length: GlutinWindowResizedEvent byteSize)
]

{ #category : #'accessing structure variables' }
RustWindowingBaseEvent >> window_resized: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_RESIZED put: anObject getHandle length: GlutinWindowResizedEvent byteSize
]
