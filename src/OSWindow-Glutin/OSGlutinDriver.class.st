Class {
	#name : #OSGlutinDriver,
	#superclass : #OSWindowDriver,
	#traits : 'TGlutinLibrary',
	#classTraits : 'TGlutinLibrary classTrait',
	#classVars : [
		'CurrentSession',
		'EventsLoop',
		'WindowsRegistry',
		'WindowsRegistryMutex'
	],
	#category : #'OSWindow-Glutin'
}

{ #category : #'events-processing' }
OSGlutinDriver class >> ensureEventsLoop [
	"I make sure that Glutin events loop (external) is valid"

	(CurrentSession == Smalltalk session
		and: [ EventsLoop isNotNil
			and: [ EventsLoop isNull not ] ])
		ifTrue: [ ^ self ].

	CurrentSession := Smalltalk session.
	EventsLoop := GlutinEventsLoop new
]

{ #category : #'events-processing' }
OSGlutinDriver class >> pollEvents [
	self ensureEventsLoop.

	WindowsRegistryMutex critical: [
		EventsLoop fetchEvents: [ :aGlutinEvent |
		| aWindowId |
		aWindowId := aGlutinEvent window_id asInteger.
		WindowsRegistry
			at: aWindowId
			ifPresent: [ :anOSGlutinWindowHandle |				
				anOSGlutinWindowHandle isValid
					ifTrue: [ aGlutinEvent mapped accept: anOSGlutinWindowHandle ] ] ] ]
]

{ #category : #'window creation' }
OSGlutinDriver >> createWindowWithAttributes: anOSWindowAttributes osWindow: osWindow [
	| windowBuilder contextBuilder handle window |
	<return: #OSGlutinWindowHandle>

	WindowsRegistryMutex critical: [
		self class ensureEventsLoop.

		windowBuilder := GlutinWindowBuilder new
			title: anOSWindowAttributes title;
			extent: anOSWindowAttributes extent;
			withDecorations: anOSWindowAttributes borderless not;
			withTransparency: false;
			withResizable: anOSWindowAttributes resizable;
			withMaximized: anOSWindowAttributes maximized.

		contextBuilder := GlutinContextBuilder create.
		
		handle := GlutinWindowedContext
			create: EventsLoop 
			windowBuilder: windowBuilder
			contextBuilder: contextBuilder.
			
		window := OSGlutinWindowHandle newWithHandle: handle.
		window osWindow: osWindow.
		self registerWindow: window.
		
		"The OSWindow handle has to be set inside of this critical section to avoid losing some events such as expose."
		osWindow setJustCreatedHandle: window ].

	^ window
]

{ #category : #initialization }
OSGlutinDriver >> initialize [
	super initialize.

	self initializeWindowsRegistry
]

{ #category : #initialization }
OSGlutinDriver >> initializeWindowsRegistry [

	WindowsRegistry ifNil: [ WindowsRegistry := WeakIdentityValueDictionary new ].
	WindowsRegistryMutex ifNil: [ WindowsRegistryMutex := Semaphore forMutualExclusion ]
]

{ #category : #'window creation and deletion' }
OSGlutinDriver >> registerWindow: anOSWinitWindowHandle [
	WindowsRegistry at: anOSWinitWindowHandle id put: anOSWinitWindowHandle
]
