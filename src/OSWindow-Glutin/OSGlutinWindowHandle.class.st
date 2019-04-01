Class {
	#name : #OSGlutinWindowHandle,
	#superclass : #OSWindowHandle,
	#instVars : [
		'handle',
		'currentCursor',
		'iconSurface'
	],
	#category : #'OSWindow-Glutin'
}

{ #category : #'instance creation' }
OSGlutinWindowHandle class >> newWithHandle: aHandle [
	^ self basicNew initWithHandle: aHandle
]

{ #category : #accessing }
OSGlutinWindowHandle >> canvasExtent [
	^ self winitWindow framebufferExtent
]

{ #category : #deleting }
OSGlutinWindowHandle >> destroy [
	self handle destroy.
	handle := nil
]

{ #category : #accessing }
OSGlutinWindowHandle >> extent [
	^ self winitWindow innerExtent
]

{ #category : #accessing }
OSGlutinWindowHandle >> extent: newExtent [
	self winitWindow innerExtent: newExtent
]

{ #category : #accessing }
OSGlutinWindowHandle >> handle [
	<return: #GlutinWindowedContext>

	^ handle
]

{ #category : #initialize }
OSGlutinWindowHandle >> initWithHandle: aHandle [
	"aHandle is GlutinWindowedContext"

	handle := aHandle
]

{ #category : #testing }
OSGlutinWindowHandle >> isValid [
	^ handle isNotNil and: [ handle isValid ]
]

{ #category : #factory }
OSGlutinWindowHandle >> newOpenGLRenderer [
	^ renderer := OSGlutinRenderer new 
		window: self;
		yourself
]

{ #category : #'events-processing' }
OSGlutinWindowHandle >> pollEvents [
	self isValid
		ifFalse: [ ^ self ].

	handle pollEvents: [ :aWinitEvent | aWinitEvent mapped logCr ]
]

{ #category : #accessing }
OSGlutinWindowHandle >> position [
	^ self winitWindow position
]

{ #category : #accessing }
OSGlutinWindowHandle >> show [
	
]

{ #category : #accessing }
OSGlutinWindowHandle >> title [
	^ self winitWindow title
]

{ #category : #accessing }
OSGlutinWindowHandle >> title: aTitle [
	self winitWindow title: aTitle
]

{ #category : #accessing }
OSGlutinWindowHandle >> winitWindow [
	<return: #WinitWindow>

	^ self handle
]
