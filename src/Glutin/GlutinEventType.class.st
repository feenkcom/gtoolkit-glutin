Class {
	#name : #GlutinEventType,
	#superclass : #GlutinEnum,
	#classVars : [
		'LoopDestroyed',
		'MainEventsCleared',
		'ModifiersChanged',
		'NewEvents',
		'RedrawRequested',
		'Resumed',
		'Suspended',
		'Unknown',
		'WindowEventAxisMotion',
		'WindowEventCloseRequested',
		'WindowEventCursorEntered',
		'WindowEventCursorLeft',
		'WindowEventCursorMoved',
		'WindowEventDestroyed',
		'WindowEventDroppedFile',
		'WindowEventFocused',
		'WindowEventHiDpiFactorChanged',
		'WindowEventHoveredFile',
		'WindowEventHoveredFileCancelled',
		'WindowEventKeyboardInput',
		'WindowEventMouseInput',
		'WindowEventMouseWheel',
		'WindowEventMoved',
		'WindowEventReceivedCharacter',
		'WindowEventResized',
		'WindowEventTouch',
		'WindowEventTouchpadPressure'
	],
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinEventType class >> LoopDestroyed [
	"This method was automatically generated"
	^ LoopDestroyed
]

{ #category : #'accessing enum' }
GlutinEventType class >> MainEventsCleared [
	"This method was automatically generated"
	^ MainEventsCleared
]

{ #category : #'accessing enum' }
GlutinEventType class >> ModifiersChanged [
	"This method was automatically generated"
	^ ModifiersChanged
]

{ #category : #'accessing enum' }
GlutinEventType class >> NewEvents [
	"This method was automatically generated"
	^ NewEvents
]

{ #category : #'accessing enum' }
GlutinEventType class >> RedrawRequested [
	"This method was automatically generated"
	^ RedrawRequested
]

{ #category : #'accessing enum' }
GlutinEventType class >> Resumed [
	"This method was automatically generated"
	^ Resumed
]

{ #category : #'accessing enum' }
GlutinEventType class >> Suspended [
	"This method was automatically generated"
	^ Suspended
]

{ #category : #'accessing enum' }
GlutinEventType class >> Unknown [
	"This method was automatically generated"
	^ Unknown
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventAxisMotion [
	"This method was automatically generated"
	^ WindowEventAxisMotion
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventCloseRequested [
	"This method was automatically generated"
	^ WindowEventCloseRequested
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventCursorEntered [
	"This method was automatically generated"
	^ WindowEventCursorEntered
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventCursorLeft [
	"This method was automatically generated"
	^ WindowEventCursorLeft
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventCursorMoved [
	"This method was automatically generated"
	^ WindowEventCursorMoved
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventDestroyed [
	"This method was automatically generated"
	^ WindowEventDestroyed
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventDroppedFile [
	"This method was automatically generated"
	^ WindowEventDroppedFile
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventFocused [
	"This method was automatically generated"
	^ WindowEventFocused
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventHiDpiFactorChanged [
	"This method was automatically generated"
	^ WindowEventHiDpiFactorChanged
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventHoveredFile [
	"This method was automatically generated"
	^ WindowEventHoveredFile
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventHoveredFileCancelled [
	"This method was automatically generated"
	^ WindowEventHoveredFileCancelled
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventKeyboardInput [
	"This method was automatically generated"
	^ WindowEventKeyboardInput
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventMouseInput [
	"This method was automatically generated"
	^ WindowEventMouseInput
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventMouseWheel [
	"This method was automatically generated"
	^ WindowEventMouseWheel
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventMoved [
	"This method was automatically generated"
	^ WindowEventMoved
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventReceivedCharacter [
	"This method was automatically generated"
	^ WindowEventReceivedCharacter
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventResized [
	"This method was automatically generated"
	^ WindowEventResized
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventTouch [
	"This method was automatically generated"
	^ WindowEventTouch
]

{ #category : #'accessing enum' }
GlutinEventType class >> WindowEventTouchpadPressure [
	"This method was automatically generated"
	^ WindowEventTouchpadPressure
]

{ #category : #'enum declaration' }
GlutinEventType class >> externalDeclaration [
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
		WindowEventHiDpiFactorChanged,
		NewEvents,
		MainEventsCleared,
		LoopDestroyed,
		Suspended,
		Resumed,
		RedrawRequested,
		ModifiersChanged,
	)
]

{ #category : #'enum declaration' }
GlutinEventType class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
GlutinEventType class >> initialize [
	super initialize
]
