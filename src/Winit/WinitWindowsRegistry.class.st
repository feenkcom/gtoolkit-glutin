Class {
	#name : #WinitWindowsRegistry,
	#superclass : #Object,
	#instVars : [
		'mutex',
		'windows'
	],
	#classInstVars : [
		'default'
	],
	#category : #'Winit-External'
}

{ #category : #'instance creation' }
WinitWindowsRegistry class >> cleanUp [
	<script: 'self cleanUp'>
	super cleanUp.
	
	default := nil
]

{ #category : #'instance creation' }
WinitWindowsRegistry class >> default [
	^ default ifNil: [ default := self new ]
]

{ #category : #accessing }
WinitWindowsRegistry >> detectId: aWindowId ifFound: aFoundBlock [
	^ self detectId: aWindowId ifFound: aFoundBlock ifNone: []
]

{ #category : #accessing }
WinitWindowsRegistry >> detectId: aWindowId ifFound: aFoundBlock ifNone: aNoneBlock [
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
WinitWindowsRegistry >> hasWindows [
	<return: #Boolean>
	| hasWindows |
	
	hasWindows := false.
	mutex critical: [ hasWindows := windows isNotEmpty ].
	^ hasWindows
]

{ #category : #initialization }
WinitWindowsRegistry >> initialize [
	super initialize.
	
	windows := OrderedDictionary new.
	mutex := Mutex new
]

{ #category : #'window creation and deletion' }
WinitWindowsRegistry >> registerWindow: aWinitWindow [
	mutex critical: [
		windows
			at: aWinitWindow id
			put: aWinitWindow ]
]

{ #category : #'window creation and deletion' }
WinitWindowsRegistry >> unregisterWindow: aWinitWindow [
	mutex critical: [
		windows
			removeKey: aWinitWindow id
			ifAbsent: [  ] ]
]

{ #category : #accessing }
WinitWindowsRegistry >> windowsDo: aBlock [
	| theWindowsCopy |
	
	theWindowsCopy := mutex critical: [ windows copy ].
	theWindowsCopy do: aBlock
]
