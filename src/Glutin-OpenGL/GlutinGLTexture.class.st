Class {
	#name : #GlutinGLTexture,
	#superclass : #Object,
	#instVars : [
		'gl',
		'id',
		'origin',
		'extent',
		'internalFormat',
		'format',
		'type',
		'target',
		'mipMapped'
	],
	#pools : [
		'GtGleamGLConstants'
	],
	#category : #'Glutin-OpenGL-Renderer'
}

{ #category : #'api - gl' }
GlutinGLTexture >> bindTexture [
	gl bind_texture_2d: id.

	gl tex_parameter_i: gl GL_TEXTURE_2D name: gl GL_TEXTURE_MIN_FILTER param: gl GL_NEAREST.
	gl tex_parameter_i: gl GL_TEXTURE_2D name: gl GL_TEXTURE_MAG_FILTER param: gl GL_NEAREST.
]

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
	self format: GL_BGRA_INTEGER
]

{ #category : #properties }
GlutinGLTexture >> formatRGBA8888 [
	self format: GL_RGBA8
]

{ #category : #accessing }
GlutinGLTexture >> gl [
	^ gl
]

{ #category : #accessing }
GlutinGLTexture >> gl: aGlutinGL [
	gl := aGlutinGL
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
	
	origin := 0@0.
	extent := 0@0.
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
GlutinGLTexture >> origin [
	<return: #Point>

	^ origin
]

{ #category : #accessing }
GlutinGLTexture >> origin: aPoint [
	origin := aPoint
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

{ #category : #'api - updating' }
GlutinGLTexture >> updateTextureFromBuffer: aGlutinOpenGLBuffer [
	self bindTexture.

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

{ #category : #accessing }
GlutinGLTexture >> width [
	^ extent x
]
