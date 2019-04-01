Class {
	#name : #OSGlutinDriver,
	#superclass : #OSWindowDriver,
	#traits : 'TGlutinLibrary',
	#classTraits : 'TGlutinLibrary classTrait',
	#classVars : [
		'EventLoopProcess',
		'WindowsRegistry',
		'WindowsRegistryMutex'
	],
	#category : #'OSWindow-Glutin'
}

{ #category : #'window creation' }
OSGlutinDriver >> createWindowWithAttributes: anOSWindowAttributes osWindow: osWindow [
	| windowBuilder contextBuilder handle window |
	<return: #OSGlutinWindowHandle>

	WindowsRegistryMutex critical: [ 
		windowBuilder := GlutinWindowBuilder new
			title: anOSWindowAttributes title;
			withDecorations: anOSWindowAttributes borderless not;
			withTransparency: false;
			withResizable: anOSWindowAttributes resizable.

		contextBuilder := GlutinContextBuilder create.
		
		handle := GlutinWindowedContext
			windowBuilder: windowBuilder
			contextBuilder: contextBuilder.
			
		window := OSGlutinWindowHandle newWithHandle: handle.
		window osWindow: osWindow.
		self registerWindow: window.
		
		"The OSWindow handle has to be set inside of this critical section to avoid losing some events such as expose."
		osWindow setJustCreatedHandle: window ].

	^ window
]

{ #category : #'events-processing' }
OSGlutinDriver >> eventLoopProcess [
	| session |

	session := Smalltalk session.
	
	[ session == Smalltalk session] 
		whileTrue: [
			WindowsRegistryMutex critical: [ 
				WindowsRegistry do: [ :eachOSGlutinWindowHandle | eachOSGlutinWindowHandle ifNotNil: #pollEvents ] ].
			(Delay forMilliseconds: 5) wait ]
]

{ #category : #initialization }
OSGlutinDriver >> initialize [
	super initialize.

	self initializeWindowsRegistry.
	self setupEventLoop.
]

{ #category : #initialization }
OSGlutinDriver >> initializeWindowsRegistry [

	WindowsRegistry ifNil: [ WindowsRegistry := WeakOrderedCollection new ].
	WindowsRegistryMutex := Semaphore forMutualExclusion
]

{ #category : #'window creation and deletion' }
OSGlutinDriver >> registerWindow: anOSWinitWindowHandle [
	WindowsRegistry add: anOSWinitWindowHandle
]

{ #category : #'events-processing' }
OSGlutinDriver >> setupEventLoop [
	EventLoopProcess ifNotNil: [ EventLoopProcess terminate ].
	EventLoopProcess := [ self eventLoopProcess ] forkAt: Processor lowIOPriority.
	EventLoopProcess
		name: 'Glutin Event loop';
		resume
]
