Class {
	#name : #OSGlutinFormRenderer,
	#superclass : #OSWindowGLRenderer,
	#instVars : [
		'form',
		'texture',
		'renderer',
		'deferUpdates',
		'textureExtent',
		'gl',
		'vertShaderObj',
		'fragShaderObj',
		'progObj',
		'vertexBuff',
		'buffData',
		'texBuff',
		'vloc',
		'tloc',
		'uLoc',
		'externalForm'
	],
	#pools : [
		'GlutinOpenGLConstants'
	],
	#category : #'OSWindow-Glutin'
}

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> createGL [
	self
		assert: [ self window isNotNil ]
		description: [ 'Window must be set!' ].

	self asCurrentDo: [
		textureExtent := form extent.

		externalForm := OSSDL2ExternalForm extent: textureExtent depth: 32.
		externalForm allocateSpace.
		self primitiveUpdateRectangle: (1@1 extent: textureExtent) externalForm: externalForm.
	
		self initializeGL.

		gl viewport_x: 0 y: 0 width: textureExtent x * 2 height: textureExtent y * 2.
	
		texture := gl gen_texture.
		gl bind_texture_2d: texture.
		gl tex_parameter_i_target: GL_TEXTURE_2D name: GL_TEXTURE_MIN_FILTER param: GL_NEAREST.
		gl tex_parameter_i_target: GL_TEXTURE_2D name: GL_TEXTURE_MAG_FILTER param: GL_NEAREST.
		
		gl
			tex_image_2d_level: 0
			internalformat: GL_RGBA
			width: textureExtent x
			height: textureExtent y
			border: 0
			format: GL_BGRA
			type: GL_UNSIGNED_INT_8_8_8_8_REV
			pixels: externalForm pointer getHandle
			length: form width * form height * 4 ]
]

{ #category : #'morphic integration' }
OSGlutinFormRenderer >> deferUpdatesWhile: aBlock [
	deferUpdates := true.
	aBlock ensure: [ deferUpdates := false. ].
	self useDeferredUpdates.
	
]

{ #category : #accessing }
OSGlutinFormRenderer >> form [
	^ form
]

{ #category : #accessing }
OSGlutinFormRenderer >> form: anObject [
	form := anObject
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> fragmentShader [
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

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> fragmentShader120 [
	^ '#version 120
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> fragmentShader150 [
	^ '#version 150
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> fragmentShader330 [
	^ '#version 330
	
	precision highp float;
	
	varying vec2 vTex;
	uniform sampler2D sampler0;

	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	}'
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> fragmentShader410 [
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
OSGlutinFormRenderer >> getCanvas [
	^ form getCanvas
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> initializeGL [
	
	gl
		ifNotNil: [ ^ self ].

	gl := self window handle gl.
	
	gl clear_colorR: 1 g: 1 b: 1 a: 1.
	gl clear: GL_COLOR_BUFFER_BIT.

	vertShaderObj := gl create_vertex_shader.
	fragShaderObj := gl create_fragment_shader.
	gl shader_source: vertShaderObj string: (self vertexShader withLineEndings: OSPlatform current lineEnding).
	gl shader_source: fragShaderObj string: (self fragmentShader withLineEndings: OSPlatform current lineEnding).
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

	vloc := gl get_attribute_location_program: progObj name: 'aVertex'.
	tloc := gl get_attribute_location_program: progObj name: 'aUV'.
	uLoc := gl get_attribute_location_program: progObj name: 'pos'.
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> makeCurrent: aWindow [
	aWindow isValid
		ifFalse: [ ^ false ].
	
	aWindow handle makeCurrent.
	^ true
]

{ #category : #'instance creation' }
OSGlutinFormRenderer >> newExtent: anExtent [
	form setExtent: anExtent depth: form depth.
	self createGL
]

{ #category : #'updating screen' }
OSGlutinFormRenderer >> primitiveUpdateRectangle: rectangle externalForm: anExternalForm [
	anExternalForm copy: rectangle from: form to: rectangle origin rule: Form over
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> swapBuffers: aWindow [
	aWindow handle swapBuffers
]

{ #category : #'updating screen' }
OSGlutinFormRenderer >> updateAll [
	"do something to update whole contents of the window"
	
	self validate
		ifFalse: [ ^ self ].
	
	self asCurrentDo: [
		| vao |

		self primitiveUpdateRectangle: (1@1 extent: textureExtent) externalForm: externalForm.
		
		gl bind_texture_2d: texture.
		gl tex_parameter_i_target: GL_TEXTURE_2D name: GL_TEXTURE_MIN_FILTER param: GL_NEAREST.
		gl tex_parameter_i_target: GL_TEXTURE_2D name: GL_TEXTURE_MAG_FILTER param: GL_NEAREST.
		
		gl
			tex_sub_image_2d_level: 0
			xoffset: 0
			yoffset: 0
			width: textureExtent x
			height: textureExtent y
			format: GL_BGRA
			type: GL_UNSIGNED_INT_8_8_8_8_REV
			pixels: externalForm pointer getHandle
			length: form width * form height * 4.
		
		vao := gl gen_vertex_array.
		gl bind_vertex_array: vao.
		
		gl enable_vertex_attrib_array: vloc.
		gl bind_array_buffer: vertexBuff.
		gl
			vertex_attrib_pointer_index: vloc
			size: 2
			type: GL_FLOAT
			normalized: false
			stride: 0
			offset: 0.
			
		gl enable_vertex_attrib_array: tloc.
		gl bind_array_buffer: texBuff.
		gl
			vertex_attrib_pointer_index: tloc
			size: 2
			type: GL_FLOAT
			normalized: false
			stride: 0
			offset: 0.
			
		gl draw_arrays_mode: GL_TRIANGLE_FAN first: 0 count: 4.	
		
		self swapBuffers ]
]

{ #category : #'updating screen' }
OSGlutinFormRenderer >> updateAreas: allDamage immediate: forceToScreen [
	allDamage do: [ :r| self updateRectangle: r ]
]

{ #category : #'updating screen' }
OSGlutinFormRenderer >> updateRectangle: rectangle [
	"do something to update given portion of the window"
	| intersection |
	
	intersection := rectangle rounded
		intersect: (1 @ 1 corner: form extent)
		ifNone: [ ^ self ].	
	
	self validate
		ifFalse: [ ^ self ].
	
	self asCurrentDo: [
		| vao |

		self primitiveUpdateRectangle: intersection externalForm: externalForm.
		
		gl bind_texture_2d: texture.
		gl tex_parameter_i_target: GL_TEXTURE_2D name: GL_TEXTURE_MIN_FILTER param: GL_NEAREST.
		gl tex_parameter_i_target: GL_TEXTURE_2D name: GL_TEXTURE_MAG_FILTER param: GL_NEAREST.
		
		gl
			tex_sub_image_2d_level: 0
			xoffset: 0
			yoffset: 0
			width: textureExtent x
			height: textureExtent y
			format: GL_BGRA
			type: GL_UNSIGNED_INT_8_8_8_8_REV
			pixels: externalForm pointer getHandle
			length: form width * form height * 4.
		
		vao := gl gen_vertex_array.
		gl bind_vertex_array: vao.
		
		gl enable_vertex_attrib_array: vloc.
		gl bind_array_buffer: vertexBuff.
		gl
			vertex_attrib_pointer_index: vloc
			size: 2
			type: GL_FLOAT
			normalized: false
			stride: 0
			offset: 0.
			
		gl enable_vertex_attrib_array: tloc.
		gl bind_array_buffer: texBuff.
		gl
			vertex_attrib_pointer_index: tloc
			size: 2
			type: GL_FLOAT
			normalized: false
			stride: 0
			offset: 0.
			
		gl draw_arrays_mode: GL_TRIANGLE_FAN first: 0 count: 4.	
		
		self swapBuffers ]
]

{ #category : #'morphic integration' }
OSGlutinFormRenderer >> useDeferredUpdates [
	self updateAll
]

{ #category : #'updating screen' }
OSGlutinFormRenderer >> validate [
	form
		ifNil: [ ^ false ].
	
	gl
		ifNil: [ self createGL ].
		
	externalForm
		ifNil: [ ^ false ].	
	
	(externalForm extent ~= form extent)
		ifFalse: [ self createGL ].
		
	^ true
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> vertexShader [
	| aShaderVersion |
	
	aShaderVersion := gl shaderVersion.
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

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> vertexShader120 [
	^ '#version 120
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> vertexShader150 [
	^ '#version 150
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> vertexShader330 [
	^ '#version 330
	
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]

{ #category : #'private - opengl' }
OSGlutinFormRenderer >> vertexShader410 [
	^ '#version 410
	
	in vec2 aVertex;
	in vec2 aUV;
	out vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]
