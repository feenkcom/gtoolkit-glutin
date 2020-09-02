Class {
	#name : #GlutinPixelFormatRequirements,
	#superclass : #GlutinExternalObject,
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements class >> primCreate [
	^ self ffiCall: #(void* glutin_pixel_format_requirements_default())
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_pixel_format_requirements_drop(void** aHandle))
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> alphaBitsDo: aBlock [
	self alphaBitsDo: aBlock ifNone: [  ]
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> alphaBitsDo: aBlock ifNone: aNoneBlock [
	^ self primCaresAlphaBits
		ifTrue: [ aBlock value: self primGetAlphaBits ]
		ifFalse: aNoneBlock
]

{ #category : #converting }
GlutinPixelFormatRequirements >> asOrderedDictionary [
	^ {
		#alphaBits -> (self alphaBitsDo: #asString ifNone: [ 'don''t care' ]).
		#colorBits -> (self colorBitsDo: #asString ifNone: [ 'don''t care' ]).
		#depthBits -> (self depthBitsDo: #asString ifNone: [ 'don''t care' ]).
		#stencilBits -> (self stencilBitsDo: #asString ifNone: [ 'don''t care' ]).
		#multisapling -> (self multisamplingDo: #asString ifNone: [ 'don''t care' ]).
		#doubleBuffer -> (self doubleBufferDo: #asString ifNone: [ 'don''t care' ]).
		#hardwareAccelerated -> (self hardwareAcceleratedDo: #asString ifNone: [ 'don''t care' ]).
		#isFlatColorBuffer -> self isFlatColorBuffer.
		#isSrgb -> self isSrgb.
		#isStereoscopy -> self isStereoscopy.
	 } asOrderedDictionary
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> colorBitsDo: aBlock [
	self colorBitsDo: aBlock ifNone: [  ]
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> colorBitsDo: aBlock ifNone: aNoneBlock [
	^ self primCaresColorBits
		ifTrue: [ aBlock value: self primGetColorBits ]
		ifFalse: aNoneBlock
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> depthBitsDo: aBlock [
	self depthBitsDo: aBlock ifNone: [  ]
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> depthBitsDo: aBlock ifNone: aNoneBlock [
	^ self primCaresDepthBits
		ifTrue: [ aBlock value: self primGetDepthBits ]
		ifFalse: aNoneBlock
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> doubleBufferDo: aBlock [
	self doubleBufferDo: aBlock ifNone: [  ]
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> doubleBufferDo: aBlock ifNone: aNoneBlock [
	^ self primCaresDoubleBuffer
		ifTrue: [ aBlock value: self primIsDoubleBuffer ]
		ifFalse: aNoneBlock
]

{ #category : #'gt-extension' }
GlutinPixelFormatRequirements >> gtInfoFor: aView [
	<gtView>

	^ (self asOrderedDictionary gtItemsFor: aView)
		title: 'Info';
		priority: 2
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> hardwareAcceleratedDo: aBlock [
	self hardwareAcceleratedDo: aBlock ifNone: [  ]
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> hardwareAcceleratedDo: aBlock ifNone: aNoneBlock [
	^ self primCaresHardwareAcceleration
		ifTrue: [ aBlock value: self primIsHardwareAccelerated ]
		ifFalse: aNoneBlock
]

{ #category : #testing }
GlutinPixelFormatRequirements >> isFlatColorBuffer [
	^ self primIsFlatColorBuffer
]

{ #category : #testing }
GlutinPixelFormatRequirements >> isSrgb [
	^ self primIsSrgb
]

{ #category : #testing }
GlutinPixelFormatRequirements >> isStereoscopy [
	^ self primIsStereoscopy
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> multisamplingDo: aBlock [
	self multisamplingDo: aBlock ifNone: [  ]
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> multisamplingDo: aBlock ifNone: aNoneBlock [
	^ self primCaresMultisampling
		ifTrue: [ aBlock value: self primGetMultisampling ]
		ifFalse: aNoneBlock
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primCaresAlphaBits [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_cares_alpha_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primCaresColorBits [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_cares_color_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primCaresDepthBits [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_cares_depth_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primCaresDoubleBuffer [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_cares_double_buffer(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primCaresHardwareAcceleration [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_cares_hardware_accelerated(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primCaresMultisampling [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_cares_multisampling(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primCaresStencilBits [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_cares_stencil_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primGetAlphaBits [
	^ self ffiCall: #(uint8 glutin_pixel_format_requirements_get_alpha_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primGetColorBits [
	^ self ffiCall: #(uint8 glutin_pixel_format_requirements_get_color_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primGetDepthBits [
	^ self ffiCall: #(uint8 glutin_pixel_format_requirements_get_depth_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primGetMultisampling [
	^ self ffiCall: #(uint8 glutin_pixel_format_requirements_get_multisampling(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primGetStencilBits [
	^ self ffiCall: #(uint8 glutin_pixel_format_requirements_get_stencil_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primIsDoubleBuffer [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_is_double_buffer(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primIsFlatColorBuffer [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_is_float_color_buffer(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primIsHardwareAccelerated [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_is_hardware_accelerated(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primIsSrgb [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_is_srgb(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormatRequirements >> primIsStereoscopy [
	^ self ffiCall: #(bool glutin_pixel_format_requirements_is_stereoscopy(self))
]

{ #category : #printing }
GlutinPixelFormatRequirements >> printOn: aStream [
	aStream print: self asOrderedDictionary
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> stencilBitsDo: aBlock [
	self stencilBitsDo: aBlock ifNone: [  ]
]

{ #category : #accessing }
GlutinPixelFormatRequirements >> stencilBitsDo: aBlock ifNone: aNoneBlock [
	^ self primCaresStencilBits
		ifTrue: [ aBlock value: self primGetStencilBits ]
		ifFalse: aNoneBlock
]
