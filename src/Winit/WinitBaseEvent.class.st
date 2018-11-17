Class {
	#name : #WinitBaseEvent,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_EVENT_TYPE',
		'OFFSET_MOUSE_WHEEL',
		'OFFSET_TOUCH',
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
		WinitEventType event_type
		#WinitBaseTouchEvent touch
		#WinitBaseMouseWheelEvent mouse_wheel
		WinitBaseWindowResizedEvent window_resized
		WinitBaseWindowMovedEvent window_moved
 	)
]

{ #category : #initialization }
WinitBaseEvent class >> initializeEventTypeMap [
	"
	self initializeEventTypeMap
	"
	EventTypeMap := Dictionary new.
	WinitMappedEvent allSubclassesDo: [ :cls |
		| eventType |
		eventType := cls eventType.
		eventType ifNotNil: [ EventTypeMap at: eventType put: cls ] ]
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

{ #category : #accessing }
WinitBaseEvent >> mapped [
	^ (self class eventMap at: self event_type ifAbsent: [ WinitUnknownEvent ]) fromBaseEvent: self
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> mouse_wheel [
	"This method was automatically generated"
	^ WinitBaseMouseWheelEvent fromHandle: (handle referenceStructAt: OFFSET_MOUSE_WHEEL length: WinitBaseMouseWheelEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> mouse_wheel: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MOUSE_WHEEL put: anObject getHandle length: WinitBaseMouseWheelEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> touch [
	"This method was automatically generated"
	^ WinitBaseTouchEvent fromHandle: (handle referenceStructAt: OFFSET_TOUCH length: WinitBaseTouchEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> touch: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TOUCH put: anObject getHandle length: WinitBaseTouchEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_moved [
	"This method was automatically generated"
	^ WinitBaseWindowMovedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_MOVED length: WinitBaseWindowMovedEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_moved: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_MOVED put: anObject getHandle length: WinitBaseWindowMovedEvent byteSize
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_resized [
	"This method was automatically generated"
	^ WinitBaseWindowResizedEvent fromHandle: (handle referenceStructAt: OFFSET_WINDOW_RESIZED length: WinitBaseWindowResizedEvent byteSize)
]

{ #category : #'accessing structure variables' }
WinitBaseEvent >> window_resized: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_WINDOW_RESIZED put: anObject getHandle length: WinitBaseWindowResizedEvent byteSize
]
