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

{ #category : #'private - ffi' }
GlutinGL class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_gl_release(void* aHandle))
]

{ #category : #'generated bindings' }
GlutinGL >> attach_shader: shader program: program [
	^ self ffiCall: #( void glutin_gl_attach_shader ( GlutinGL self, GLuint program, GLuint shader ) )
]

{ #category : #'generated bindings' }
GlutinGL >> bind_texture_2d: texture [
	^ self ffiCall: #( void glutin_gl_bind_texture_2d ( GlutinGL self, GLuint texture ) )
]

{ #category : #'generated bindings' }
GlutinGL >> compile_shader: shader [
	^ self ffiCall: #( void glutin_gl_compile_shader ( GlutinGL self, GLuint shader ) )
]

{ #category : #'generated bindings' }
GlutinGL >> create_fragment_shader [ 
	^ self ffiCall: #( GLuint glutin_gl_create_fragment_shader ( GlutinGL self ) )
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
GlutinGL >> enable_texture_2d [
	^ self ffiCall: #( void glutin_gl_enable_texture_2d ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> gen_texture [
	^ self ffiCall: #( GLuint glutin_gl_gen_texture ( GlutinGL self ) )
]

{ #category : #'generated bindings' }
GlutinGL >> shader_source: shader string: source [
	^ self ffiCall: #( void glutin_gl_shader_source ( GlutinGL self, GLuint shader, String source ) )
]
