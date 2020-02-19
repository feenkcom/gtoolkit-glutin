Class {
	#name : #GlutinGLTextureRenderer,
	#superclass : #GlutinGLRenderer,
	#instVars : [
		'program'
	],
	#category : #'Glutin-OpenGL-Renderer - Texture'
}

{ #category : #accessing }
GlutinGLTextureRenderer >> createTexture: aGlutinOpenGLBuffer [
	"Create a texture for a given opengl buffer"
	<return: #GlutinGLTexture>
	| aTexture |
	
	self ensureGL.

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
		pixels: (GtBoxerArrayU8
			fromHandle: aGlutinOpenGLBuffer pixels
			size: aGlutinOpenGLBuffer stride * aGlutinOpenGLBuffer height * 4).

	^ aTexture
]

{ #category : #initialization }
GlutinGLTextureRenderer >> ensureProgram [
	program
		ifNotNil: [ ^ self ].

	self initializeProgram
]

{ #category : #initialization }
GlutinGLTextureRenderer >> initializeProgram [
	self
		assert: [ program isNil ]
		description: [ 'Program must be nil' ].
		
	program := GlutinGLBufferRendererProgram new renderer: self
]

{ #category : #'private - testing' }
GlutinGLTextureRenderer >> isGLValid [
	<return: #Boolean>

	session == Smalltalk session
		ifFalse: [ ^ false ].

	gl
		ifNil: [ ^ false ].
		
	^ true
]

{ #category : #'private - rendering' }
GlutinGLTextureRenderer >> prepareForRendering [
	self
		assert: [ self context isNotNil ]
		description: [ 'Window must be set!' ].

	self ensureGL.
	self ensureProgram.
	
	(gl check_frame_buffer_status: gl GL_FRAMEBUFFER) = gl GL_FRAMEBUFFER_COMPLETE
		ifFalse: [
			NonInteractiveTranscript stdout
				show: ('[GL] Framebuffer is incomplete {1}' format: { gl check_frame_buffer_status: gl GL_FRAMEBUFFER });
				cr ].

	gl viewport: (0@0 extent: self context innerExtent)
]

{ #category : #rendering }
GlutinGLTextureRenderer >> renderTexture: aGlutinGLTexture [
	| aMatrix aScale aContextExtent aContextWidth aContextHeight aTextureWidth aTextureHeight aTextureX aTextureY |
	self context isValid
		ifFalse: [ ^ self ].

	self makeCurrent.

	self hasProblems
		ifTrue: [ self resetResources ].
	
	self prepareForRendering.
	
	self hasProblems
		ifTrue: [ ^ self ].

	aGlutinGLTexture bindTexture.
	
	self hasProblems
		ifTrue: [ ^ self ].
	
	aScale := self context scaleFactor.
	
	aContextExtent := self context innerExtent.
	aContextWidth := aContextExtent x asFloat.
	aContextHeight := aContextExtent y asFloat.
	
	aTextureWidth := aGlutinGLTexture extent x.
	aTextureHeight := aGlutinGLTexture extent y.
	
	aTextureX := aGlutinGLTexture origin x.
	aTextureY := aGlutinGLTexture origin y.
	
	aMatrix := FloatArray withAll: {
		(2.0 / aContextWidth * aTextureWidth * aScale) . 0 . 0 . 0.
		0 . (-2.0 / aContextHeight * aTextureHeight * aScale) . 0 . 0.
		0 . 0 . -1. 0.
		-1.0 + (2.0 * aTextureX / aContextWidth) . 1.0 - (2.0 * aTextureY / aContextHeight) . 0 . 1
	}.
	
	program matrix: aMatrix.
	program execute.

	self swapBuffers
]

{ #category : #initialization }
GlutinGLTextureRenderer >> resetResources [
	super resetResources.
	
	program := nil
]

{ #category : #accessing }
GlutinGLTextureRenderer >> window: aGlutinWindowedContext [
	context := aGlutinWindowedContext
]
