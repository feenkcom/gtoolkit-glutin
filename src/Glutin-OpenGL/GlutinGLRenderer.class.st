Class {
	#name : #GlutinGLRenderer,
	#superclass : #Object,
	#instVars : [
		'context',
		'gl',
		'session',
		'errors',
		'problems'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #initialization }
GlutinGLRenderer >> context [
	"Return the current OpenGL context"
	<return: #Object>

	^ context
]

{ #category : #initialization }
GlutinGLRenderer >> context: anOpenGLContext [
	
	self
		assert: [ anOpenGLContext respondsTo: #makeCurrent ]
		description: [ 'OpenGL context must understand #makeCurrent' ].
	
	self
		assert: [ anOpenGLContext respondsTo: #swapBuffers ]
		description: [ 'OpenGL context must understand #swapBuffers' ].	
	
	self
		assert: [ anOpenGLContext respondsTo: #getProcAddress: ]
		description: [ 'OpenGL context must understand #getProcAddress:' ].
		
	self
		assert: [ context isNil ]
		description: [ 'Renderer can only be initialized once' ].
	
	context := anOpenGLContext
]

{ #category : #initialization }
GlutinGLRenderer >> ensureGL [
	"I make sure that GL is initialized and is ready to be used"
	(session = Smalltalk session
		and: [ gl isNil not
			and: [ gl isNull not ] ])
		ifTrue: [ ^ self ].

	self initializeGL
]

{ #category : #'private - errors' }
GlutinGLRenderer >> errors [
	^ errors
]

{ #category : #'private - errors' }
GlutinGLRenderer >> flushErrors [
	| thePreviousErrors |
	
	thePreviousErrors := errors.
	self readErrors.
	errors := #()
]

{ #category : #'api - context' }
GlutinGLRenderer >> getProcAddress: aSymbol [
	"Gets an OpenGL procedure address."
	<return: #ExternalAddress>

	^ self context getProcAddress: aSymbol
]

{ #category : #'api - gl' }
GlutinGLRenderer >> gl [
	<return: #GtGleamGL>

	^ gl
]

{ #category : #'private - errors' }
GlutinGLRenderer >> hasErrors [
	<return: #Boolean>

	^ errors isNotEmpty
]

{ #category : #'private - problems' }
GlutinGLRenderer >> hasProblems [
	^ problems isNotEmpty
]

{ #category : #initialization }
GlutinGLRenderer >> initialize [
	super initialize.

	errors := #().
	problems := OrderedCollection new
]

{ #category : #initialization }
GlutinGLRenderer >> initializeGL [
	"I initialize an OpenGL context to be ready to render a pixel buffer"
	| aContextApi |
	
	self
		assert: [ gl isNil ]
		description: [ 'GL must not be already initialized' ].

	aContextApi := self context api.

	gl := aContextApi = GlutinContextApi OpenGl
		ifTrue: [ GtGleamGL loadGl: [ :aSymbol | self getProcAddress: aSymbol ] ]
		ifFalse: [ aContextApi = GlutinContextApi OpenGlEs
			ifTrue: [ GtGleamGL loadGles: [ :aSymbol | self getProcAddress: aSymbol ] ]
			ifFalse: [ self error: 'Unsupported API' ] ].
	
	session := Smalltalk session.
	
	self readErrors.
	self printErrors.
	
	self resetResources
]

{ #category : #'api - context' }
GlutinGLRenderer >> makeCurrent [	
	self context makeCurrent
]

{ #category : #'private - errors' }
GlutinGLRenderer >> printErrorMessage: aString [
	Stdio stdout
		nextPutAll: '[Gleam] Error: ';
		nextPutAll: aString asString;
		lf
]

{ #category : #'private - errors' }
GlutinGLRenderer >> printErrors [
	self errors do: [ :eachError | self printErrorMessage: eachError printString ]
]

{ #category : #'private - errors' }
GlutinGLRenderer >> printProblemMessage: aString [
	Stdio stdout
		nextPutAll: '[Gleam] Problem: ';
		nextPutAll: aString asString;
		lf
]

{ #category : #'private - errors' }
GlutinGLRenderer >> readErrors [
	"Read all opengl errors"

	errors := Array streamContents: [ :aStream | self readErrorsDo: [ :eachError | aStream nextPut: eachError ] ]
]

{ #category : #'private - errors' }
GlutinGLRenderer >> readErrorsDo: anExceptionBlock [
	| anError |

	[ (anError := gl get_error) = gl GL_NO_ERROR ]
		whileFalse: [ anExceptionBlock cull: anError ]
]

{ #category : #'private - problems' }
GlutinGLRenderer >> recordProblem: aGlutinProblem [
	problems add: aGlutinProblem.
	self printProblemMessage: aGlutinProblem description
]

{ #category : #initialization }
GlutinGLRenderer >> resetResources [
	"Session changed, reset resources"
	
	errors := #().
	problems := OrderedCollection new
]

{ #category : #'api - gl' }
GlutinGLRenderer >> shaderVersion [
	<return: #Number>
	
	^ gl shaderVersion
]

{ #category : #'api - context' }
GlutinGLRenderer >> swapBuffers [
	self context swapBuffers
]
