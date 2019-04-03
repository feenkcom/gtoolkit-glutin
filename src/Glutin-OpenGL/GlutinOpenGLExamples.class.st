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
	| aWindowedContext gl vertShaderObj fragShaderObj progObj vertexBuff texBuff buffData vloc tloc uLoc |
	
	aWindowedContext := GlutinWindowedContextExamples new windowedContext.
	aWindowedContext makeCurrent.
	
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
	
	gl viewport_x: 0 y: 0 width: 800 height: 600.
	
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
	
	aWindowedContext swapBuffers.
			
	^ aWindowedContext
]

{ #category : #'examples - gl' }
GlutinOpenGLExamples >> fragmentShader [
	<gtExample>
	
	^ '
	precision highp float;
	varying vec2 vTex;
	uniform sampler2D sampler0;
	void main(void) {
		gl_FragColor = texture2D(sampler0, vTex);
	};'
]

{ #category : #'examples - gl' }
GlutinOpenGLExamples >> vertexShader [
	<gtExample>
	
	^ '
	attribute vec2 aVertex;
	attribute vec2 aUV;
	varying vec2 vTex;
	uniform vec2 pos;
	
	void main(void) {
		gl_Position = vec4(aVertex + pos, 0.0, 1.0);
		vTex = aUV;
	};'
]
