Class {
	#name : #RustWindowingLibrary,
	#superclass : #FFILibrary,
	#classInstVars : [
		'MouseWheelScrollSpeed',
		'MouseWheelHorizontalScrollSpeed',
		'MouseWheelHorizontalScrollSpeedDueToVerticalAndShift'
	],
	#category : #'Glutin-Library'
}

{ #category : #'library path' }
RustWindowingLibrary class >> ffiLibrary [
	^ self
]

{ #category : #accessing }
RustWindowingLibrary class >> initEnvLogger [
	self uniqueInstance initEnvLogger
]

{ #category : #settings }
RustWindowingLibrary class >> mouseWheelHorizontalScrollSpeed [
	"An additional speed factor applied to the horizontal scroll using a tilting wheel"
	<return: #Number>

	^ MouseWheelHorizontalScrollSpeed ifNil: [ 12 ]
]

{ #category : #settings }
RustWindowingLibrary class >> mouseWheelHorizontalScrollSpeed: aNumber [
	MouseWheelHorizontalScrollSpeed := aNumber
]

{ #category : #settings }
RustWindowingLibrary class >> mouseWheelHorizontalScrollSpeedDueToVerticalAndShift [
	"An additional speed factor applied to the horizontal scroll when pressing shift and scrolling with a vertical wheel"
	<return: #Number>

	^ MouseWheelHorizontalScrollSpeedDueToVerticalAndShift ifNil: [ 1 ]
]

{ #category : #settings }
RustWindowingLibrary class >> mouseWheelHorizontalScrollSpeedDueToVerticalAndShift: aNumber [
	MouseWheelHorizontalScrollSpeedDueToVerticalAndShift := aNumber
]

{ #category : #settings }
RustWindowingLibrary class >> mouseWheelScrollSpeed [
	"An additional speed factor applied to mouse wheel scroll delta"
	<return: #Number>

	^ MouseWheelScrollSpeed ifNil: [ OSPlatform current glutinDefaultMouseWheelScrollSpeed ]
]

{ #category : #settings }
RustWindowingLibrary class >> mouseWheelScrollSpeed: aNumber [
	MouseWheelScrollSpeed := aNumber
]

{ #category : #settings }
RustWindowingLibrary class >> preferencesGroup [
	^ 	#appearance
]

{ #category : #settings }
RustWindowingLibrary class >> preferencesOn: aBuilder [
	<systemsettings>
	(aBuilder group: #Glutin)
		label: 'Glutin';
		description: 'Glutin settings';
		parent: self preferencesGroup;
		with: [
			(aBuilder range: #mouseWheelScrollSpeed)
				parent: #Glutin;
				order: 1;
				label: 'Scroll wheel speed';
				description: 'Specify mouse wheel scroll speed factor for Glutin windows';
				target: self;
				range: (0.3 to: 20 by: 0.1) ]
]

{ #category : #testing }
RustWindowingLibrary >> hasModule [
	"Return if there is a loadable and working Glutin library installed, false otherwise"
	<return: #Boolean>
	| aResult |

	aResult := nil.
	
	[ aResult := self primTest ]
		on: Error
		do: [ :e | aResult := false ].

	^ aResult ifNil: [ false ]
]

{ #category : #'api - logger' }
RustWindowingLibrary >> initEnvLogger [
	[ self primInitEnvLogger ]
		on: Error
		do: [ :e | NonInteractiveTranscript stdout nextPutAll: '[Glutin] Could not init env logger'; cr ]
]

{ #category : #'private - ffi' }
RustWindowingLibrary >> primInitEnvLogger [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowingLibrary >> primTest [
	^ self subclassResponsibility
]
