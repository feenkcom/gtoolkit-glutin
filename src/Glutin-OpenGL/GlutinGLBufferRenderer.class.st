"
I render a pixel buffer {{gtClass:GlutinGLBuffer}} as a texture {{gtClass:GlutinGLTexture}} in a glutin window using Gleam API


"
Class {
	#name : #GlutinGLBufferRenderer,
	#superclass : #GlutinGLRenderer,
	#instVars : [
		'program',
		'texture'
	],
	#category : #'Glutin-OpenGL-Renderer - Buffer'
}

{ #category : #'private - texture' }
GlutinGLBufferRenderer >> createTexture: aGlutinOpenGLBuffer [
	"Create a texture for a given opengl buffer"
	<return: #GlutinGLTexture>
	| aTexture |

	aTexture := GlutinGLTexture new.
	aTexture id: gl gen_texture.
	aTexture extent: aGlutinOpenGLBuffer extent.
	aTexture gl: gl.

	gl bind_texture_2d: aTexture id.

	gl tex_parameter_i: gl GL_TEXTURE_2D name: gl GL_TEXTURE_MIN_FILTER param: gl GL_NEAREST.
	gl tex_parameter_i: gl GL_TEXTURE_2D name: gl GL_TEXTURE_MAG_FILTER param: gl GL_NEAREST.

	gl
		tex_image_2d: gl GL_TEXTURE_2D
		level: 0
		internalFormat: gl GL_RGBA
		width: aGlutinOpenGLBuffer width
		height: aGlutinOpenGLBuffer height
		border: 0
		format: gl GL_BGRA
		type: gl GL_UNSIGNED_BYTE
		pixels: (gl ffiLibrary
			unsafeNewArrayU8FromData: aGlutinOpenGLBuffer pixels
			length: aGlutinOpenGLBuffer stride * aGlutinOpenGLBuffer height * 4).

	^ aTexture
]

{ #category : #'private - texture' }
GlutinGLBufferRenderer >> deleteTexture [
	texture
		ifNil: [ ^ self ].

	gl delete_texture: texture id.
	texture := nil
]

{ #category : #initialization }
GlutinGLBufferRenderer >> ensureProgram [
	program
		ifNotNil: [ ^ self ].

	self initializeProgram
]

{ #category : #initialization }
GlutinGLBufferRenderer >> initializeProgram [
	self
		assert: [ program isNil ]
		description: [ 'Program must be nil' ].
		
	program := GlutinGLBufferRendererProgram new renderer: self
]

{ #category : #'private - testing' }
GlutinGLBufferRenderer >> isGLValid [
	<return: #Boolean>

	session == Smalltalk session
		ifFalse: [ ^ false ].

	gl
		ifNil: [ ^ false ].
		
	^ true
]

{ #category : #'private - testing' }
GlutinGLBufferRenderer >> isTextureValidFor: aGlutinOpenGLBuffer [
	<return: #Boolean>
		
	texture
		ifNil: [ ^ false ].
		
	texture extent = aGlutinOpenGLBuffer extent
		ifFalse: [ ^ false ].
		
	^ true
]

{ #category : #'private - testing' }
GlutinGLBufferRenderer >> isValidFor: aGlutinOpenGLBuffer [
	<return: #Boolean>

	^ self isGLValid and: [ self isTextureValidFor: aGlutinOpenGLBuffer ]
]

{ #category : #'private - rendering' }
GlutinGLBufferRenderer >> prepareForBuffer: aGlutinGLBuffer [
	self
		assert: [ self window isNotNil ]
		description: [ 'Window must be set!' ].

	self ensureGL.
	self ensureProgram.

	(self isValidFor: aGlutinGLBuffer)
		ifTrue: [ ^ self ].
	
	(gl check_frame_buffer_status: gl GL_FRAMEBUFFER) = gl GL_FRAMEBUFFER_COMPLETE
		ifFalse: [
			NonInteractiveTranscript stdout
				show: ('[GL] Framebuffer is incomplete {1}' format: { gl check_frame_buffer_status: gl GL_FRAMEBUFFER });
				cr ].

	self deleteTexture.
	texture := self createTexture: aGlutinGLBuffer.
	
	gl viewport: (0@0 extent: self context innerExtent)
]

{ #category : #'api - rendering' }
GlutinGLBufferRenderer >> presentBuffer: aGlutinOpenGLBuffer areas: aCollectionOfAreas [
	self window isValid
		ifFalse: [ ^ self ].

	self makeCurrent.

	self hasProblems
		ifTrue: [ self resetResources ].
	
	self prepareForBuffer: aGlutinOpenGLBuffer.
	
	self hasProblems
		ifTrue: [ ^ self ].

	self updateTextureFromBuffer: aGlutinOpenGLBuffer.
	
	self hasProblems
		ifTrue: [ ^ self ].
	
	program execute.

	self swapBuffers
]

{ #category : #initialization }
GlutinGLBufferRenderer >> resetResources [
	super resetResources.
	
	program := texture := nil
]

{ #category : #'private - texture' }
GlutinGLBufferRenderer >> updateTextureFromBuffer: aGlutinOpenGLBuffer [
	self hasProblems
		ifTrue: [
			self printErrorMessage: 'Skip texture update due to existing problems'.
			^ self ].

	texture
		ifNil: [
			self printErrorMessage: 'Skip texture update due to undefined (nil) texture'.
			^ self ].

	self flushErrors.

	gl bind_texture_2d: texture id.

	self readErrors.
	self hasErrors
		ifTrue: [
			self recordProblem: (GlutinTextureBindingProblem new texture: texture id; errors: self errors).
			gl delete_texture: texture id.
			texture := nil.
			^ self ].

	gl tex_parameter_i: gl GL_TEXTURE_2D name: gl GL_TEXTURE_MIN_FILTER param: gl GL_NEAREST.
	gl tex_parameter_i: gl GL_TEXTURE_2D name: gl GL_TEXTURE_MAG_FILTER param: gl GL_NEAREST.
	
	gl
		tex_sub_image_2d: gl GL_TEXTURE_2D
		level: 0
		xoffset: 0
		yoffset: 0
		width: aGlutinOpenGLBuffer width
		height: aGlutinOpenGLBuffer height
		format: gl GL_BGRA
		type: gl GL_UNSIGNED_BYTE
		pixels: (gl ffiLibrary
			unsafeNewArrayU8FromData: aGlutinOpenGLBuffer pixels
			length: aGlutinOpenGLBuffer stride * aGlutinOpenGLBuffer height * 4).
	
	self readErrors.
	self hasErrors
		ifTrue: [
			self recordProblem: (GlutinTextureUpdateProblem new texture: texture id; errors: self errors).
			gl delete_texture: texture id.
			texture := nil.
			^ self ].
]

{ #category : #accessing }
GlutinGLBufferRenderer >> window [
	<return: #GlutinWindowedContext>

	^ context
]

{ #category : #accessing }
GlutinGLBufferRenderer >> window: aGlutinWindowedContext [
	context := aGlutinWindowedContext
]
