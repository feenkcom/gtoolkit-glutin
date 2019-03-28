Class {
	#name : #OSWinitDriver,
	#superclass : #OSWindowDriver,
	#traits : 'TGlutinLibrary',
	#classTraits : 'TGlutinLibrary classTrait',
	#classVars : [
		'EventLoopProcess',
		'WindowsRegistry',
		'WindowsRegistryMutex'
	],
	#category : #'OSWindow-Winit'
}

{ #category : #'window creation' }
OSWinitDriver >> createWindowWithAttributes: anOSWindowAttributes osWindow: osWindow [
	| windowBuilder contextBuilder handle window |
	<return: #OSWinitWindowHandle>

	WindowsRegistryMutex critical: [ 
		windowBuilder := GlutinWindowBuilder new
			title: anOSWindowAttributes title;
			withDecorations: anOSWindowAttributes borderless not;
			withTransparency: false;
			withResizable: anOSWindowAttributes resizable.

		contextBuilder := GlutinContextBuilder create.
		
		handle := WinitGLWindow
			windowBuilder: windowBuilder
			contextBuilder: contextBuilder.
			
		window := OSWinitWindowHandle newWithHandle: handle.
		window osWindow: osWindow.
		self registerWindow: window.
		
		"The OSWindow handle has to be set inside of this critical section to avoid losing some events such as expose."
		osWindow setJustCreatedHandle: window ].

	^ window
]

{ #category : #'events-processing' }
OSWinitDriver >> eventLoopProcess [
	| session |

	session := Smalltalk session.
	
	[ session == Smalltalk session] 
		whileTrue: [
			WindowsRegistryMutex critical: [ 
				WindowsRegistry do: [ :eachOSWinitWindowHandle | eachOSWinitWindowHandle ifNotNil: #pollEvents ] ].
			(Delay forMilliseconds: 5) wait ]
]

{ #category : #initialization }
OSWinitDriver >> initialize [
	super initialize.

	self initializeWindowsRegistry.
	self setupEventLoop.
]

{ #category : #initialization }
OSWinitDriver >> initializeWindowsRegistry [

	WindowsRegistry ifNil: [ WindowsRegistry := WeakOrderedCollection new ].
	WindowsRegistryMutex := Semaphore forMutualExclusion
]

{ #category : #'window creation and deletion' }
OSWinitDriver >> registerWindow: anOSWinitWindowHandle [
	WindowsRegistry add: anOSWinitWindowHandle
]

{ #category : #'events-processing' }
OSWinitDriver >> setupEventLoop [
	EventLoopProcess ifNotNil: [ EventLoopProcess terminate ].
	EventLoopProcess := [ self eventLoopProcess ] forkAt: Processor lowIOPriority.
	EventLoopProcess
		name: 'Winit Event loop';
		resume
]
