Class {
	#name : #GlutinContextProfile,
	#superclass : #Object,
	#instVars : [
		'vsync',
		'acceleration',
		'doubleBuffer',
		'multisampling',
		'depthBuffer',
		'stencilBuffer',
		'pixelFormat',
		'srgb',
		'glRequest'
	],
	#category : #'Glutin-External'
}

{ #category : #accessing }
GlutinContextProfile >> acceleration [
	^ acceleration
]

{ #category : #accessing }
GlutinContextProfile >> acceleration: anObject [
	acceleration := anObject
]

{ #category : #converting }
GlutinContextProfile >> asContextBuilder [
	| aBuilder |
	
	aBuilder := GlutinContextBuilder new.
	
	vsync ifNotNil: [ :aValue | aBuilder withVsync: aValue ].
	doubleBuffer ifNotNil: [ :aValue | aBuilder withDoubleBuffer: aValue ].
	multisampling ifNotNil: [ :aValue | aBuilder withMultisampling: aValue ].
	depthBuffer ifNotNil: [ :aValue | aBuilder withDepthBuffer: aValue ].
	stencilBuffer ifNotNil: [ :aValue | aBuilder withStencilBuffer: aValue ].
	pixelFormat ifNotNil: [ :aValue | aBuilder withPixelFormatColor: aValue first alpha: aValue second ].
	srgb ifNotNil: [ :aValue | aBuilder withSrgb: aValue ].
	glRequest ifNotNil: [ :aValue | aBuilder perform: aValue key withArguments: aValue value ].
	acceleration ifNotNil: [ :aValue | aBuilder perform: aValue ].
	
	^ aBuilder
]

{ #category : #accessing }
GlutinContextProfile >> depthBuffer [
	^ depthBuffer
]

{ #category : #accessing }
GlutinContextProfile >> depthBuffer: anObject [
	depthBuffer := anObject
]

{ #category : #accessing }
GlutinContextProfile >> doubleBuffer [
	^ doubleBuffer
]

{ #category : #accessing }
GlutinContextProfile >> doubleBuffer: anObject [
	doubleBuffer := anObject
]

{ #category : #accessing }
GlutinContextProfile >> glRequest [
	^ glRequest
]

{ #category : #accessing }
GlutinContextProfile >> glRequest: anObject [
	glRequest := anObject
]

{ #category : #accessing }
GlutinContextProfile >> multisampling [
	^ multisampling
]

{ #category : #accessing }
GlutinContextProfile >> multisampling: anObject [
	multisampling := anObject
]

{ #category : #accessing }
GlutinContextProfile >> pixelFormat [
	^ pixelFormat
]

{ #category : #accessing }
GlutinContextProfile >> pixelFormat: anObject [
	pixelFormat := anObject
]

{ #category : #accessing }
GlutinContextProfile >> srgb [
	^ srgb
]

{ #category : #accessing }
GlutinContextProfile >> srgb: anObject [
	srgb := anObject
]

{ #category : #accessing }
GlutinContextProfile >> stencilBuffer [
	^ stencilBuffer
]

{ #category : #accessing }
GlutinContextProfile >> stencilBuffer: anObject [
	stencilBuffer := anObject
]

{ #category : #accessing }
GlutinContextProfile >> vsync [
	^ vsync
]

{ #category : #accessing }
GlutinContextProfile >> vsync: anObject [
	vsync := anObject
]
