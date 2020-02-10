Class {
	#name : #GlutinWindowsRegistry,
	#superclass : #Object,
	#instVars : [
		'mutex',
		'windows'
	],
	#classInstVars : [
		'default'
	],
	#category : #'Glutin-Windows'
}

{ #category : #'instance creation' }
GlutinWindowsRegistry class >> cleanUp [
	<script: 'self cleanUp'>
	super cleanUp.
	
	default := nil
]

{ #category : #'instance creation' }
GlutinWindowsRegistry class >> default [
	^ default ifNil: [ default := self new ]
]

{ #category : #accessing }
GlutinWindowsRegistry >> detectId: aWindowId ifFound: aFoundBlock [
	^ self detectId: aWindowId ifFound: aFoundBlock ifNone: []
]

{ #category : #accessing }
GlutinWindowsRegistry >> detectId: aWindowId ifFound: aFoundBlock ifNone: aNoneBlock [
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
GlutinWindowsRegistry >> hasWindows [
	<return: #Boolean>
	| hasWindows |
	
	hasWindows := false.
	mutex critical: [ hasWindows := windows isNotEmpty ].
	^ hasWindows
]

{ #category : #initialization }
GlutinWindowsRegistry >> initialize [
	super initialize.
	
	windows := OrderedDictionary new.
	mutex := Mutex new
]

{ #category : #'window creation and deletion' }
GlutinWindowsRegistry >> registerWindow: aGlutinWindow [
	mutex critical: [
		windows
			at: aGlutinWindow id
			put: aGlutinWindow ]
]

{ #category : #'window creation and deletion' }
GlutinWindowsRegistry >> unregisterWindow: aGlutinWindow [
	mutex critical: [
		windows
			removeKey: aGlutinWindow id
			ifAbsent: [  ] ]
]

{ #category : #accessing }
GlutinWindowsRegistry >> windowsDo: aBlock [
	| theWindowsCopy |
	
	theWindowsCopy := mutex critical: [ windows copy ].
	theWindowsCopy do: aBlock
]
