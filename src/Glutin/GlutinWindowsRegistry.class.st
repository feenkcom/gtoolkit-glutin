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

{ #category : #initialization }
GlutinWindowsRegistry >> critical: aBlock [
	mutex critical: aBlock
]

{ #category : #accessing }
GlutinWindowsRegistry >> detectId: aWindowId ifFound: aFoundBlock [
	^ self detectId: aWindowId ifFound: aFoundBlock ifNone: []
]

{ #category : #accessing }
GlutinWindowsRegistry >> detectId: aWindowId ifFound: aFoundBlock ifNone: aNoneBlock [
	^ windows
		at: aWindowId
		ifPresent: aFoundBlock
		ifAbsent: aNoneBlock
]

{ #category : #initialization }
GlutinWindowsRegistry >> initialize [
	super initialize.
	
	windows := WeakIdentityValueDictionary new.
	mutex := Semaphore forMutualExclusion
]

{ #category : #'window creation and deletion' }
GlutinWindowsRegistry >> registerWindow: aGlutinWindow [
	self critical: [
		windows
			at: aGlutinWindow id
			put: aGlutinWindow ]
]

{ #category : #'window creation and deletion' }
GlutinWindowsRegistry >> unregisterWindow: aGlutinWindow [
	self critical: [
		windows
			removeKey: aGlutinWindow id
			ifAbsent: [  ] ]
]
