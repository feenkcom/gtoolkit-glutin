Class {
	#name : #OSWinitWindowHandle,
	#superclass : #OSWindowHandle,
	#instVars : [
		'handle',
		'currentCursor',
		'iconSurface'
	],
	#category : #'OSWindow-Winit'
}

{ #category : #'instance creation' }
OSWinitWindowHandle class >> newWithHandle: aHandle [
	^ self basicNew initWithHandle: aHandle
]

{ #category : #deleting }
OSWinitWindowHandle >> destroy [
	self handle destroy.
	handle := nil
]

{ #category : #accessing }
OSWinitWindowHandle >> handle [
	<return: #WinitWindow>

	^ handle
]

{ #category : #initialize }
OSWinitWindowHandle >> initWithHandle: aHandle [
	"aHandle is WinitWindow"

	handle := aHandle
]

{ #category : #testing }
OSWinitWindowHandle >> isValid [
	^ handle isNotNil and: [ handle isValid ]
]

{ #category : #factory }
OSWinitWindowHandle >> newOpenGLRenderer [
	^ renderer := OSWinitGLRenderer new 
		window: self;
		createContext;
		yourself
]

{ #category : #'events-processing' }
OSWinitWindowHandle >> pollEvents [
	self isValid
		ifFalse: [ ^ self ].

	handle eventsLoop pollEvents: [ :aWinitEvent | aWinitEvent mapped logCr ]
]

{ #category : #accessing }
OSWinitWindowHandle >> winitWindow [
	<return: #WinitWindow>

	^ self handle
]
