Class {
	#name : #GlutinGLTexture,
	#superclass : #Object,
	#instVars : [
		'id',
		'extent',
		'internalFormat',
		'format',
		'type',
		'target',
		'mipMapped'
	],
	#pools : [
		'GlutinGLConstants'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #accessing }
GlutinGLTexture >> extent [
	^ extent
]

{ #category : #accessing }
GlutinGLTexture >> extent: anObject [
	extent := anObject
]

{ #category : #accessing }
GlutinGLTexture >> format [
	^ format
]

{ #category : #accessing }
GlutinGLTexture >> format: anObject [
	format := anObject
]

{ #category : #properties }
GlutinGLTexture >> formatBGRA8888 [
	self format: GL_BGRA8_EXT
]

{ #category : #properties }
GlutinGLTexture >> formatRGBA8888 [
	self format: GL_RGBA8
]

{ #category : #testing }
GlutinGLTexture >> hasMipMaps [
	^ mipMapped
]

{ #category : #accessing }
GlutinGLTexture >> height [
	^ extent y
]

{ #category : #accessing }
GlutinGLTexture >> id [
	^ id
]

{ #category : #accessing }
GlutinGLTexture >> id: anObject [
	id := anObject
]

{ #category : #initialization }
GlutinGLTexture >> initialize [
	super initialize.
	
	target := GL_TEXTURE_2D.
	mipMapped := false
]

{ #category : #accessing }
GlutinGLTexture >> internalFormat [
	^ internalFormat
]

{ #category : #accessing }
GlutinGLTexture >> internalFormat: aNumber [
	internalFormat := aNumber
]

{ #category : #properties }
GlutinGLTexture >> internalFormatBGRA [
	self internalFormat: GL_BGRA
]

{ #category : #properties }
GlutinGLTexture >> internalFormatRGBA [
	self internalFormat: GL_RGBA
]

{ #category : #accessing }
GlutinGLTexture >> target [
	^ target
]

{ #category : #accessing }
GlutinGLTexture >> target: aNumber [
	target := aNumber
]

{ #category : #accessing }
GlutinGLTexture >> type [
	^ type
]

{ #category : #accessing }
GlutinGLTexture >> type: anObject [
	type := anObject
]

{ #category : #properties }
GlutinGLTexture >> typeUInt8888 [
	self type: GL_UNSIGNED_INT_8_8_8_8_REV
]

{ #category : #accessing }
GlutinGLTexture >> width [
	^ extent x
]
