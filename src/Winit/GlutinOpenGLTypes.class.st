Class {
	#name : #GlutinOpenGLTypes,
	#superclass : #SharedPool,
	#classVars : [
		'GLUnurbs',
		'GLUquadric',
		'GLUtesselator',
		'GLbitfield',
		'GLboolean',
		'GLbyte',
		'GLchar',
		'GLcharARB',
		'GLclampd',
		'GLclampf',
		'GLdouble',
		'GLenum',
		'GLfloat',
		'GLfuncptr',
		'GLhalfNV',
		'GLhandleARB',
		'GLint',
		'GLint64',
		'GLint64EXT',
		'GLintptr',
		'GLintptrARB',
		'GLshort',
		'GLsizei',
		'GLsizeiptr',
		'GLsizeiptrARB',
		'GLsync',
		'GLubyte',
		'GLuint',
		'GLuint64',
		'GLuint64EXT',
		'GLushort',
		'GLvoid'
	],
	#category : #'Winit-OpenGL'
}

{ #category : #'class initialization' }
GlutinOpenGLTypes class >> initialize [
	"
	self initialize
	"
	GLfloat := #FFIFloat32.
	GLdouble := #FFIFloat64.
	GLclampd := #FFIFloat64.
	GLclampf := #FFIFloat32.
	
	GLhalfNV := #ushort.
	GLvoid := #void.
	GLshort := #short.
	GLint64EXT := #longlong. 
	GLuint64 := #ulonglong.

	GLsizei := #ulong.  "ptr-sized int"
	GLfuncptr := #'void*'.
	
	GLUquadric	:= GLUtesselator  := #void.  
	GLint := #long.
	GLboolean := #FFIBool.
	GLUnurbs := #void. 
	GLsync := #'void*'.
	
	GLhandleARB := #uint.
	GLuint64EXT := #ulonglong.
	GLcharARB := #char.
	GLenum := #ulong.
	GLushort := #ushort.
	GLchar := #char.
	GLintptr := #ulong.
	GLuint := #ulong.
	GLsizeiptr := #ulong.
	GLbitfield := #ulong.
	GLint64 := #longlong.
	GLintptrARB := #ulong.
	GLbyte := #signedByte.
	GLsizeiptrARB := #ulong.
	GLchar := #char.
	GLubyte := #unsignedByte.
]
