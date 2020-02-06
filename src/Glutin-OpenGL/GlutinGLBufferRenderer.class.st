"
I render a pixel buffer ${class:GlutinOpenGLBuffer}$ as a texture ${class:GlutinOpenGLTexture}$ in a glutin window using Gleam API
"
Class {
	#name : #GlutinGLBufferRenderer,
	#superclass : #GlutinGLRenderer,
	#instVars : [
		'vertShaderObj',
		'fragShaderObj',
		'progObj',
		'vertexBuff',
		'buffData',
		'texBuff',
		'vloc',
		'tloc',
		'texture'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #'private - texture' }
GlutinGLBufferRenderer >> createTexture: aGlutinOpenGLBuffer [
	"Create a texture for a given opengl buffer"
	<return: #GlutinGLTexture>
	| aTexture |

	aTexture := GlutinGLTexture new.
	aTexture id: gl gen_texture.
	aTexture extent: aGlutinOpenGLBuffer extent.

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

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> fragmentShader [
	| aShaderVersion |
	
	aShaderVersion := gl shaderVersion.
	aShaderVersion >= 410
		ifTrue: [ ^ self fragmentShader410 ].

	aShaderVersion >= 330
		ifTrue: [ ^ self fragmentShader330 ].
	
	aShaderVersion >= 150
		ifTrue: [ ^ self fragmentShader150 ].

	aShaderVersion >= 120
		ifTrue: [ ^ self fragmentShader120 ].
		
	^ self error: 'No fragment shader for version ', aShaderVersion asString
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> fragmentShader120 [
	^ '#version 120
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> fragmentShader150 [
	^ '#version 150
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> fragmentShader330 [
	^ '#version 330
	
	precision highp float;
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> fragmentShader410 [
	^ '#version 410
	
	precision highp float;
	
	in vec2 vTex;
	uniform sampler2D sampler0;
	
	out vec4 fragColor;
	void main(void) {
		fragColor = texture(sampler0, vTex);
	}'
]

{ #category : #'private - rendering' }
GlutinGLBufferRenderer >> initializeShaders [
	"I initialize an OpenGL context to be ready to render a pixel buffer"
	| aStringBuffer |

	vertShaderObj := gl create_vertex_shader.
	fragShaderObj := gl create_fragment_shader.

	aStringBuffer := GtBoxerString new.
	gl shader_source: vertShaderObj string: (aStringBuffer string: (self vertexShader withLineEndings: OSPlatform current lineEnding)).
	gl shader_source: fragShaderObj string: (aStringBuffer string: (self fragmentShader withLineEndings: OSPlatform current lineEnding)).
	gl compile_shader: vertShaderObj.
	gl compile_shader: fragShaderObj.
	
	progObj := gl create_program.
	gl attach_shader: vertShaderObj program: progObj.
	gl attach_shader: fragShaderObj program: progObj.
	
	gl link_program: progObj.
	gl use_program: progObj.
	
	vertexBuff := gl create_buffer.
	gl bind_array_buffer: vertexBuff.

	buffData := FFIExternalArray externalNewType: FFIFloat32 size: 8.
	buffData atAll: (1 to: 8) putAll: #(-1 1 -1 -1 1 -1 1 1).
	gl array_buffer_data_static_draw: (buffData getHandle) length: buffData size.
	buffData free.
	
	texBuff := gl create_buffer.
	gl bind_array_buffer: texBuff.

	buffData := FFIExternalArray externalNewType: FFIFloat32 size: 8.
	buffData atAll: (1 to: 8) putAll: #(0 1 0 0 1 0 1 1).
	gl array_buffer_data_static_draw: (buffData getHandle) length: buffData size.
	buffData free.

	vloc := gl get_attribute_location_program: progObj name: (aStringBuffer string: 'aVertex').
	tloc := gl get_attribute_location_program: progObj name: (aStringBuffer string: 'aUV').
	
	aStringBuffer release
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

	(self isValidFor: aGlutinGLBuffer)
		ifTrue: [ ^ self ].

	self initializeGL.
	self initializeShaders.
	
	(gl check_frame_buffer_status: gl GL_FRAMEBUFFER) = gl GL_FRAMEBUFFER_COMPLETE
		ifFalse: [
			NonInteractiveTranscript stdout
				show: ('[GL] Framebuffer is incomplete {1}' format: { gl check_frame_buffer_status: gl GL_FRAMEBUFFER });
				cr ].

	gl viewport: (0@0 extent: self window innerExtent).
	texture := self createTexture: aGlutinGLBuffer
]

{ #category : #'api - rendering' }
GlutinGLBufferRenderer >> presentBuffer: aGlutinOpenGLBuffer areas: aCollectionOfAreas [
	| vao |

	self window isValid
		ifFalse: [ ^ self ].

	self makeCurrent.
	
	self prepareForBuffer: aGlutinOpenGLBuffer.

	self updateTexture: texture from: aGlutinOpenGLBuffer.
	
	vao := gl gen_vertex_array.
	gl bind_vertex_array: vao.
	
	gl enable_vertex_attrib_array: vloc.
	gl bind_array_buffer: vertexBuff.
	gl
		vertex_attrib_pointer_index: vloc
		size: 2
		type: gl GL_FLOAT
		normalized: false
		stride: 0
		offset: 0.
		
	gl enable_vertex_attrib_array: tloc.
	gl bind_array_buffer: texBuff.
	gl
		vertex_attrib_pointer_index: tloc
		size: 2
		type: gl GL_FLOAT
		normalized: false
		stride: 0
		offset: 0.
		
	gl draw_arrays_mode: gl GL_TRIANGLE_FAN first: 0 count: 4.	
	
	self swapBuffers
]

{ #category : #'private - texture' }
GlutinGLBufferRenderer >> updateTexture: aTexture from: aGlutinOpenGLBuffer [
	gl get_error = gl GL_FALSE
		ifFalse: [ ^ self ].

	gl bind_texture_2d: aTexture id.

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
		pixels: (GtBoxerArrayU8
			fromHandle: aGlutinOpenGLBuffer pixels
			size: aGlutinOpenGLBuffer stride * aGlutinOpenGLBuffer height * 4)
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> vertexShader [
	| aShaderVersion |
	
	aShaderVersion := self shaderVersion.
	aShaderVersion >= 410
		ifTrue: [ ^ self vertexShader410 ].

	aShaderVersion >= 330
		ifTrue: [ ^ self vertexShader330 ].
	
	aShaderVersion >= 150
		ifTrue: [ ^ self vertexShader150 ].
	
	aShaderVersion >= 120
		ifTrue: [ ^ self vertexShader120 ].
		
	^ self error: 'No vertex shader for version ', aShaderVersion asString
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> vertexShader120 [
	^ '#version 120
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> vertexShader150 [
	^ '#version 150
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> vertexShader330 [
	^ '#version 330
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - shader' }
GlutinGLBufferRenderer >> vertexShader410 [
	^ '#version 410
	
	in vec2 aVertex;
	in vec2 aUV;
	out vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
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
