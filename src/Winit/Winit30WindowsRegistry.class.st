Class {
	#name : #Winit30WindowsRegistry,
	#superclass : #Object,
	#instVars : [
		'mutex',
		'windows'
	],
	#classInstVars : [
		'default'
	],
	#category : #'Winit-Windows'
}

{ #category : #'instance creation' }
Winit30WindowsRegistry class >> cleanUp [
	<script: 'self cleanUp'>
	super cleanUp.
	
	default := nil
]

{ #category : #'instance creation' }
Winit30WindowsRegistry class >> default [
	^ default ifNil: [ default := self new ]
]

{ #category : #accessing }
Winit30WindowsRegistry >> allWindows [
	^ mutex critical: [ windows values ]
]

{ #category : #accessing }
Winit30WindowsRegistry >> detectId: aWindowId ifFound: aFoundBlock [
	^ self detectId: aWindowId ifFound: aFoundBlock ifNone: []
]

{ #category : #accessing }
Winit30WindowsRegistry >> detectId: aWindowId ifFound: aFoundBlock ifNone: aNoneBlock [
	| aWindow |
	
	aWindow := nil.
	
	mutex critical: [
		windows
			at: aWindowId
			ifPresent:  [ :each | aWindow := each ] ].

	^ aWindow
		ifNotNil: aFoundBlock
		ifNil: aNoneBlock
]

{ #category : #testing }
Winit30WindowsRegistry >> hasWindows [
	<return: #Boolean>
	| hasWindows |
	
	hasWindows := false.
	mutex critical: [ hasWindows := windows isNotEmpty ].
	^ hasWindows
]

{ #category : #initialization }
Winit30WindowsRegistry >> initialize [
	super initialize.
	
	windows := OrderedDictionary new.
	mutex := Mutex new
]

{ #category : #'window creation and deletion' }
Winit30WindowsRegistry >> registerWindow: aWinitWindow [
	mutex critical: [
		windows
			at: aWinitWindow id
			put: aWinitWindow ]
]

{ #category : #'window creation and deletion' }
Winit30WindowsRegistry >> unregisterWindow: aWinitWindow [
	mutex critical: [
		windows
			removeKey: aWinitWindow id
			ifAbsent: [  ] ]
]

{ #category : #accessing }
Winit30WindowsRegistry >> windowsDo: aBlock [
	| theWindowsCopy |
	
	theWindowsCopy := mutex critical: [ windows copy ].
	theWindowsCopy do: aBlock
]
