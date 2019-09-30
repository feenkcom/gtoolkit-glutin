Class {
	#name : #GlutinGL,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#pools : [
		'GlutinOpenGLConstants',
		'GlutinOpenGLTypes'
	],
	#category : #'Glutin-OpenGL'
}

{ #category : #'library path' }
GlutinGL class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'private - ffi' }
GlutinGL class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_gl_release(void* aHandle))
]

{ #category : #'generated bindings' }
GlutinGL >> array_buffer_data_static_draw: array length: length [
	^ self ffiCall: #( void glutin_gl_array_buffer_data_static_draw (
		GlutinGL self,
		float32* array,
		uint32 length ) )
]

{ #category : #'generated bindings' }
GlutinGL >> attach_shader: shader program: program [
	^ self ffiCall: #( void glutin_gl_attach_shader ( GlutinGL self, GLuint program, GLuint shader ) )
]

{ #category : #'generated bindings' }
GlutinGL >> bind_array_buffer: buffer [
	^ self ffiCall: #( void glutin_gl_bind_array_buffer ( GlutinGL self, GLuint buffer ) )
]

{ #category : #'generated bindings' }
GlutinGL >> bind_texture_2d: texture [
	^ self ffiCall: #( void glutin_gl_bind_texture_2d ( GlutinGL self, GLuint texture ) )
]

{ #category : #'generated bindings' }
GlutinGL >> bind_vertex_array: vao [
	^ self ffiCall: #( void glutin_gl_bind_vertex_array ( GlutinGL self, GLuint vao ) )
]

{ #category : #'generated bindings' }
GlutinGL >> clear: aBufferMask [
	^ self ffiCall: #( void glutin_gl_clear (
		GlutinGL self,
		GLbitfield aBufferMask) )
]

{ #category : #'generated bindings' }
GlutinGL >> clear_colorR: r g: g b: b a: a [
	^ self ffiCall: #( void glutin_gl_clear_color (
		GlutinGL self,
		float32 r, float32 g, float32 b, float32 a ) )
]

{ #category : #'generated bindings' }
GlutinGL >> compile_shader: shader [
	^ self ffiCall: #( void glutin_gl_compile_shader ( GlutinGL self, GLuint shader ) )
]

{ #category : #'generated bindings' }
GlutinGL >> create_buffer [
	^ self ffiCall: #( GLuint glutin_gl_create_buffer ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> create_fragment_shader [ 
	^ self ffiCall: #( GLuint glutin_gl_create_fragment_shader ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> create_program [
	^ self ffiCall: #( GLuint glutin_gl_create_program ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> create_vertex_shader [
	^ self ffiCall: #( GLuint glutin_gl_create_vertex_shader ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> disable_texture_2d [
	^ self ffiCall: #( void glutin_gl_disable_texture_2d ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> draw_arrays_mode: mode first: first count: count [
	^ self ffiCall: #( void glutin_gl_draw_arrays (
		GlutinGL self,
		GLenum mode,
		GLint first,
		GLsizei count) )
]

{ #category : #'generated bindings' }
GlutinGL >> enable_texture_2d [
	^ self ffiCall: #( void glutin_gl_enable_texture_2d ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> enable_vertex_attrib_array: index [
	^ self ffiCall: #( void glutin_gl_enable_vertex_attrib_array (
		GlutinGL self,
		GLuint index) )
]

{ #category : #'generated bindings' }
GlutinGL >> free_string: aString [
	^ self ffiCall: #(void glutin_gl_free_cstring(GlutinCString* aString))
]

{ #category : #'generated bindings' }
GlutinGL >> gen_texture [
	^ self ffiCall: #( GLuint glutin_gl_gen_texture ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> gen_vertex_array [
	^ self ffiCall: #( GLuint glutin_gl_gen_vertex_array ( GlutinGL self ) )
]

{ #category : #accessing }
GlutinGL >> getString: which [
	<return: #String>
	| aStringBuffer aString |

	aStringBuffer := GlutinCString new.
	aStringBuffer pinInMemory.
	[ 
		self get_string: which in: aStringBuffer.

		aString := (FFIExternalArray
			fromHandle: aStringBuffer data getHandle
			type: FFIUInt8
			size: aStringBuffer length) asByteArray asString.
		
		self free_string: aStringBuffer.
	] ensure: [
		aStringBuffer unpinInMemory ].

	^ aString
]

{ #category : #'generated bindings' }
GlutinGL >> get_attribute_location_program: program name: name [
	^ self ffiCall: #( int32 glutin_gl_get_attribute_location (
		GlutinGL self,
		GLuint program,
		String name) )
]

{ #category : #'generated bindings' }
GlutinGL >> get_shader_version [
	^ self ffiCall: #( uint32 glutin_gl_get_shader_version ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> get_string: which in: aGlutinCString [
	^ self ffiCall: #( void glutin_gl_get_string ( GlutinGL self, GLenum which, GlutinCString* aGlutinCString) )
]

{ #category : #'generated bindings' }
GlutinGL >> get_uniform_location_program: program name: name [
	^ self ffiCall: #( int32 glutin_gl_get_uniform_location (
		GlutinGL self,
		GLuint program,
		String name) )
]

{ #category : #'generated bindings' }
GlutinGL >> link_program: program [
	^ self ffiCall: #( void glutin_gl_link_program ( GlutinGL self, GLuint program ) )
]

{ #category : #accessing }
GlutinGL >> shaderVersion [
	<return: #Number>

	^ self get_shader_version
]

{ #category : #'generated bindings' }
GlutinGL >> shader_source: shader string: source [
	^ self ffiCall: #( void glutin_gl_shader_source ( GlutinGL self, GLuint shader, String source ) )
]

{ #category : #'generated bindings' }
GlutinGL >> tex_image_2d_level: level internalformat: internalformat width: width height: height border: border format: format type: type pixels: pixels length: length [
	^ self ffiCall: #( void glutin_gl_tex_image_2d (
		GlutinGL self,
		GLint level,
		GLint internalformat,
		GLsizei width,
		GLsizei height,
		GLint border,
		GLenum format,
		GLenum type,
		uint8* pixels,
		uint32 length) )
]

{ #category : #'generated bindings' }
GlutinGL >> tex_parameter_i_target: target name: pname param: param [
	^ self ffiCall: #( void glutin_gl_tex_parameter_i (
		GlutinGL self,
		GLenum target,
		GLenum pname,
		GLint param) )
]

{ #category : #'generated bindings' }
GlutinGL >> tex_sub_image_2d_level: level xoffset: xoffset yoffset: yoffset width: width height: height format: format type: type pixels: pixels length: length [
	^ self ffiCall: #( void glutin_gl_tex_sub_image_2d (
		GlutinGL self,
		GLint level,
		GLint xoffset,
		GLint yoffset,
		GLsizei width,
		GLsizei height,
		GLenum format,
		GLenum type,
		uint8* pixels,
		uint32 length) )
]

{ #category : #'generated bindings' }
GlutinGL >> use_program: program [
	^ self ffiCall: #( void glutin_gl_use_program ( GlutinGL self, GLuint program ) )
]

{ #category : #accessing }
GlutinGL >> version [
	<return: #String>

	^ self getString: GL_VERSION
]

{ #category : #'generated bindings' }
GlutinGL >> vertex_attrib_pointer_index: index size: size type: type normalized: normalized stride: stride offset: offset [
	^ self ffiCall: #( void glutin_gl_vertex_attrib_pointer (
		GlutinGL self,
		GLuint index,
		GLint size,
		GLenum type,
		bool normalized,
		GLsizei stride,
		GLuint offset) )
]

{ #category : #'generated bindings' }
GlutinGL >> viewport_x: x y: y width: width height: height [
	^ self ffiCall: #( GLuint glutin_gl_viewport (
		GlutinGL self,
		GLint x, GLint y,
		GLsizei width, GLsizei height) )
]
