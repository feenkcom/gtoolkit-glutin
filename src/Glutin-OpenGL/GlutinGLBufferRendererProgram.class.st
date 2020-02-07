Class {
	#name : #GlutinGLBufferRendererProgram,
	#superclass : #Object,
	#instVars : [
		'renderer',
		'vertShaderObj',
		'fragShaderObj',
		'progObj',
		'vertexBuff',
		'texBuff',
		'vloc',
		'tloc',
		'vertexArray'
	],
	#pools : [
		'GtGleamGLConstants'
	],
	#category : #'Glutin-OpenGL-Renderer - Buffer'
}

{ #category : #execution }
GlutinGLBufferRendererProgram >> execute [
	"VAO tells our shaders how to match up data from buffer to shader input variables"
	
	self gl bind_vertex_array: vertexArray.
	self gl bind_array_buffer: vertexBuff.
	self gl
		vertex_attrib_pointer_index: vloc
		size: 2
		type: self gl GL_FLOAT
		normalized: false
		stride: 0
		offset: 0.
	self gl bind_array_buffer: texBuff.
	self gl
		vertex_attrib_pointer_index: tloc
		size: 2
		type: self gl GL_FLOAT
		normalized: false
		stride: 0
		offset: 0.

	self gl draw_arrays_mode: self gl GL_TRIANGLE_FAN first: 0 count: 4
]

{ #category : #'private - shader fragment' }
GlutinGLBufferRendererProgram >> fragmentShader [
	| aShaderVersion |
	
	aShaderVersion := self renderer shaderVersion.
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

{ #category : #'private - shader fragment' }
GlutinGLBufferRendererProgram >> fragmentShader120 [
	^ '#version 120
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - shader fragment' }
GlutinGLBufferRendererProgram >> fragmentShader150 [
	^ '#version 150
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - shader fragment' }
GlutinGLBufferRendererProgram >> fragmentShader330 [
	^ '#version 330
	
	precision highp float;
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - shader fragment' }
GlutinGLBufferRendererProgram >> fragmentShader410 [
	^ '#version 410
	
	precision highp float;
	
	in vec2 vTex;
	uniform sampler2D sampler0;
	
	out vec4 fragColor;
	void main(void) {
		fragColor = texture(sampler0, vTex);
	}'
]

{ #category : #accessing }
GlutinGLBufferRendererProgram >> gl [
	^ self renderer gl
]

{ #category : #'private - rendering' }
GlutinGLBufferRendererProgram >> initializeShaders [
	"I initialize an OpenGL context to be ready to render a pixel buffer"
	| buffData |

	vertShaderObj := self gl create_vertex_shader.
	fragShaderObj := self gl create_fragment_shader.

	self gl shader_source: vertShaderObj string: self vertexShader.
	self gl shader_source: fragShaderObj string: self fragmentShader.
	self gl compile_shader: vertShaderObj.
	self gl compile_shader: fragShaderObj.
	
	progObj := self gl create_program.
	self gl attach_shader: vertShaderObj program: progObj.
	self gl attach_shader: fragShaderObj program: progObj.
	
	self gl link_program: progObj.
	
	"check the status of the program linking and abort if it does not work"
	(self gl get_program_link_status: progObj)
		ifFalse: [
			self renderer recordProblem: (GlutinProgramLinkingProblem new program: progObj).
			self gl delete_program: progObj.
			progObj := nil.
			^ self ].
	
	self gl use_program: progObj.

	vloc := self gl get_attribute_location_program: progObj name: 'aVertex'.
	tloc := self gl get_attribute_location_program: progObj name: 'aUV'.

	vertexBuff := self gl create_buffer.
	self gl bind_array_buffer: vertexBuff.

	buffData := FFIExternalArray externalNewType: FFIFloat32 size: 8.
	buffData atAll: (1 to: 8) putAll: #(-1 1 -1 -1 1 -1 1 1).
	self gl array_buffer_data_static_draw: (buffData getHandle) length: buffData size.
	buffData free.
	
	texBuff := self gl create_buffer.
	self gl bind_array_buffer: texBuff.

	buffData := FFIExternalArray externalNewType: FFIFloat32 size: 8.
	buffData atAll: (1 to: 8) putAll: #(0 1 0 0 1 0 1 1).
	self gl array_buffer_data_static_draw: (buffData getHandle) length: buffData size.
	buffData free.
	
	vertexArray := self gl gen_vertex_array.
	self gl bind_vertex_array: vertexArray.
	self gl enable_vertex_attrib_array: vloc.
	"self gl
		vertex_attrib_pointer_index: vloc
		size: 2
		type: self gl GL_FLOAT
		normalized: false
		stride: 0
		offset: 0."
	self gl enable_vertex_attrib_array: tloc.
	"self gl
		vertex_attrib_pointer_index: tloc
		size: 2
		type: self gl GL_FLOAT
		normalized: false
		stride: 0
		offset: 0"
]

{ #category : #accessing }
GlutinGLBufferRendererProgram >> renderer [
	^ renderer
]

{ #category : #accessing }
GlutinGLBufferRendererProgram >> renderer: aGlutinGLRenderer [
	renderer := aGlutinGLRenderer.
	self initializeShaders
]

{ #category : #'private - shader vertex' }
GlutinGLBufferRendererProgram >> vertexShader [
	| aShaderVersion |
	
	aShaderVersion := self renderer shaderVersion.
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

{ #category : #'private - shader vertex' }
GlutinGLBufferRendererProgram >> vertexShader120 [
	^ '#version 120
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - shader vertex' }
GlutinGLBufferRendererProgram >> vertexShader150 [
	^ '#version 150
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - shader vertex' }
GlutinGLBufferRendererProgram >> vertexShader330 [
	^ '#version 330
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - shader vertex' }
GlutinGLBufferRendererProgram >> vertexShader410 [
	^ '#version 410
	
	in vec2 aVertex;
	in vec2 aUV;
	out vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]
