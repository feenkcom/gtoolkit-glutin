Class {
	#name : #WinitEventType,
	#superclass : #WinitEnum,
	#classVars : [
		'LoopDestroyed',
		'MainEventsCleared',
		'ModifiersChanged',
		'NewEvents',
		'RedrawEventsCleared',
		'RedrawRequested',
		'Resumed',
		'Suspended',
		'Unknown',
		'UserEvent',
		'WindowEventAxisMotion',
		'WindowEventCloseRequested',
		'WindowEventCursorEntered',
		'WindowEventCursorLeft',
		'WindowEventCursorMoved',
		'WindowEventDestroyed',
		'WindowEventDroppedFile',
		'WindowEventFocused',
		'WindowEventHoveredFile',
		'WindowEventHoveredFileCancelled',
		'WindowEventKeyboardInput',
		'WindowEventMouseInput',
		'WindowEventMouseWheel',
		'WindowEventMoved',
		'WindowEventReceivedCharacter',
		'WindowEventResized',
		'WindowEventScaleFactorChanged',
		'WindowEventTouch',
		'WindowEventTouchpadPressure',
		'Winit30_WindowEventKeyboardInput',
		'Winit30_WindowEventModifiersChanged',
		'Winit30_WindowEventReceivedText'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
WinitEventType class >> LoopDestroyed [
	"This method was automatically generated"
	^ LoopDestroyed
]

{ #category : #'accessing enum' }
WinitEventType class >> MainEventsCleared [
	"This method was automatically generated"
	^ MainEventsCleared
]

{ #category : #'accessing enum' }
WinitEventType class >> ModifiersChanged [
	"This method was automatically generated"
	^ ModifiersChanged
]

{ #category : #'accessing enum' }
WinitEventType class >> NewEvents [
	"This method was automatically generated"
	^ NewEvents
]

{ #category : #'accessing enum' }
WinitEventType class >> RedrawEventsCleared [
	"This method was automatically generated"
	^ RedrawEventsCleared
]

{ #category : #'accessing enum' }
WinitEventType class >> RedrawRequested [
	"This method was automatically generated"
	^ RedrawRequested
]

{ #category : #'accessing enum' }
WinitEventType class >> Resumed [
	"This method was automatically generated"
	^ Resumed
]

{ #category : #'accessing enum' }
WinitEventType class >> Suspended [
	"This method was automatically generated"
	^ Suspended
]

{ #category : #'accessing enum' }
WinitEventType class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'accessing enum' }
WinitEventType class >> UserEvent [
	"This method was automatically generated"
	^ UserEvent
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventAxisMotion [
	"This method was automatically generated"
	^ WindowEventAxisMotion
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventCloseRequested [
	"This method was automatically generated"
	^ WindowEventCloseRequested
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventCursorEntered [
	"This method was automatically generated"
	^ WindowEventCursorEntered
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventCursorLeft [
	"This method was automatically generated"
	^ WindowEventCursorLeft
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventCursorMoved [
	"This method was automatically generated"
	^ WindowEventCursorMoved
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventDestroyed [
	"This method was automatically generated"
	^ WindowEventDestroyed
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventDroppedFile [
	"This method was automatically generated"
	^ WindowEventDroppedFile
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventFocused [
	"This method was automatically generated"
	^ WindowEventFocused
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventHoveredFile [
	"This method was automatically generated"
	^ WindowEventHoveredFile
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventHoveredFileCancelled [
	"This method was automatically generated"
	^ WindowEventHoveredFileCancelled
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventKeyboardInput [
	"This method was automatically generated"
	^ WindowEventKeyboardInput
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventMouseInput [
	"This method was automatically generated"
	^ WindowEventMouseInput
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventMouseWheel [
	"This method was automatically generated"
	^ WindowEventMouseWheel
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventMoved [
	"This method was automatically generated"
	^ WindowEventMoved
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventReceivedCharacter [
	"This method was automatically generated"
	^ WindowEventReceivedCharacter
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventResized [
	"This method was automatically generated"
	^ WindowEventResized
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventScaleFactorChanged [
	"This method was automatically generated"
	^ WindowEventScaleFactorChanged
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventTouch [
	"This method was automatically generated"
	^ WindowEventTouch
]

{ #category : #'accessing enum' }
WinitEventType class >> WindowEventTouchpadPressure [
	"This method was automatically generated"
	^ WindowEventTouchpadPressure
]

{ #category : #'accessing enum' }
WinitEventType class >> Winit30_WindowEventKeyboardInput [
	"This method was automatically generated"
	^ Winit30_WindowEventKeyboardInput
]

{ #category : #'accessing enum' }
WinitEventType class >> Winit30_WindowEventModifiersChanged [
	"This method was automatically generated"
	^ Winit30_WindowEventModifiersChanged
]

{ #category : #'accessing enum' }
WinitEventType class >> Winit30_WindowEventReceivedText [
	"This method was automatically generated"
	^ Winit30_WindowEventReceivedText
]

{ #category : #'enum declaration' }
WinitEventType class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
		Unknown,
		WindowEventResized,
		WindowEventMoved,
		WindowEventCloseRequested,
		WindowEventDestroyed,
		WindowEventDroppedFile,
		WindowEventHoveredFile,
		WindowEventHoveredFileCancelled,
		WindowEventReceivedCharacter,
		WindowEventFocused,
		WindowEventKeyboardInput,
		WindowEventCursorMoved,
		WindowEventCursorEntered,
		WindowEventCursorLeft,
		WindowEventMouseWheel,
		WindowEventMouseInput,
		WindowEventTouchpadPressure,
		WindowEventAxisMotion,
		WindowEventTouch,
		WindowEventScaleFactorChanged,
		NewEvents,
		MainEventsCleared,
		LoopDestroyed,
		Suspended,
		Resumed,
		RedrawRequested,
		RedrawEventsCleared,
		ModifiersChanged,
		UserEvent,
		Winit30_WindowEventModifiersChanged,
    	Winit30_WindowEventKeyboardInput,
    	Winit30_WindowEventReceivedText,
	)
]

{ #category : #'enum declaration' }
WinitEventType class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
WinitEventType class >> initialize [
	super initialize
]
