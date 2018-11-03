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
