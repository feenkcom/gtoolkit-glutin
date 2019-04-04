Class {
	#name : #GlutinOpenGLExamples,
	#superclass : #Object,
	#pools : [
		'GlutinOpenGLConstants'
	],
	#category : #'Glutin-OpenGL-Examples'
}

{ #category : #'examples - gl' }
GlutinOpenGLExamples >> clearScreenBlue [
	<gtExample>
	| aWindowedContext gl extent vertShaderObj fragShaderObj progObj vertexBuff texBuff buffData vloc tloc uLoc tex canvas vao fancyText |
	
	aWindowedContext := GlutinWindowedContextExamples new windowedContext.
	aWindowedContext innerExtent: 570@360.
	aWindowedContext position: 200@200.
	aWindowedContext makeCurrent.
	
	extent := aWindowedContext framebufferExtent.
	
	gl := aWindowedContext gl.
	
	vertShaderObj := gl create_vertex_shader.
	fragShaderObj := gl create_fragment_shader.
	gl shader_source: vertShaderObj string: self vertexShader.
	gl shader_source: fragShaderObj string: self fragmentShader.
	gl compile_shader: vertShaderObj.
	gl compile_shader: fragShaderObj.
	
	progObj := gl create_program.
	gl attach_shader: vertShaderObj program: progObj.
	gl attach_shader: fragShaderObj program: progObj.
	
	gl link_program: progObj.
	gl use_program: progObj.
	
	gl viewport_x: 0 y: 0 width: extent x height: extent y.
	
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

	tex := gl gen_texture.
	gl bind_texture_2d: tex.
	gl tex_parameter_i_target: GL_TEXTURE_2D name: GL_TEXTURE_MIN_FILTER param: GL_NEAREST.
	gl tex_parameter_i_target: GL_TEXTURE_2D name: GL_TEXTURE_MAG_FILTER param: GL_NEAREST.
	
	fancyText := self fancyText.
	fancyText forceLayout.
	
	canvas := MozCanvas extent: extent.
	canvas fill
		paint: (Color gray alpha: 0.5);
		path: canvas bounds;
		draw.
	
	canvas transform
		by: [ :t | t scaleBy: 2.5 ] during: [ canvas fullDraw: fancyText ].
	
	canvas flush.
	
	gl
		tex_image_2d_target: GL_TEXTURE_2D
		level: 0
		internalformat: GL_RGBA
		width: extent x
		height: extent y
		border: 0
		format: GL_RGBA
		type: GL_UNSIGNED_BYTE
		pixels: canvas data
		length: canvas stride * extent y * 4.
	
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
	
	aWindowedContext swapBuffers.
			
	^ aWindowedContext
]

{ #category : #'examples - gl' }
GlutinOpenGLExamples >> fancyText [
	<gtExample>
	
	| first second third fourth fifth container |
	first := BlTextElement new text: ('Is this' asRopedText fontName: 'Gill Sans Ultra Bold'; fontSize: 30; foreground: (Color black 	alpha: 0.5)); relocate: 50@60.
	second := BlTextElement new text: ('Glamorous Toolkit' asRopedText fontName: 'Gill Sans Ultra Bold'; fontSize: 50; foreground: (Color black alpha: 0.5)); relocate: 20@85.
	third := BlTextElement new text: ('running in a' asRopedText fontName: 'Gill Sans Ultra Bold'; fontSize: 40; foreground: (Color black alpha: 0.5)); relocate: 40@120.
	fourth := BlTextElement new text: ('transparent' asRopedText fontName: 'Gill Sans Ultra Bold'; fontSize: 70; foreground: (Color blue alpha: 0.5)); relocate: 10@130.
	fifth := BlTextElement new text: ('native window?' asRopedText fontName: 'Gill Sans Ultra Bold'; fontSize: 45; foreground: (Color red alpha: 0.5)); relocate: 110@175.

	container := BlElement new
	    constraintsDo: [:c | 
	        c horizontal matchParent.
	        c vertical matchParent ];
	    addChild: first;
	    addChild: second;
	    addChild: third;
	    addChild: fourth;
	    addChild: fifth.

	^ container
]

{ #category : #'examples - gl' }
GlutinOpenGLExamples >> fragmentShader [
	<gtExample>
	
	^ '#version 410
	
	precision highp float;
	
	in vec2 vTex;
	uniform sampler2D sampler0;
	
	out vec4 fragColor;
	void main(void) {
		fragColor = texture(sampler0, vTex);
	}'
]

{ #category : #'examples - gl' }
GlutinOpenGLExamples >> vertexShader [
	<gtExample>
	
	^ '#version 410
	
	in vec2 aVertex;
	in vec2 aUV;
	out vec2 vTex;
	
	void main(void) {
		gl_Position = vec4(aVertex.x, -aVertex.y, 0.0, 1.0);
		vTex = aUV;
	}'
]
