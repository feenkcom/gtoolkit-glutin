Class {
	#name : #GlutinPixelFormat,
	#superclass : #GlutinExternalObject,
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
GlutinPixelFormat class >> primCreate [

	^ self ffiCall: #(void* glutin_pixel_format_default())
]

{ #category : #'private - ffi' }
GlutinPixelFormat class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void glutin_pixel_format_drop(void** aHandle))
]

{ #category : #accessing }
GlutinPixelFormat >> alphaBits [
	<return: #Number>
	
	^ self primGetAlphaBits
]

{ #category : #accessing }
GlutinPixelFormat >> colorBits [
	<return: #Number>
	
	^ self primGetColorBits
]

{ #category : #accessing }
GlutinPixelFormat >> depthBits [
	<return: #Number>
	
	^ self primGetDepthBits
]

{ #category : #'gt-extension' }
GlutinPixelFormat >> gtInfoFor: aView [
	<gtView>

	^ ({
		#alphaBits -> self alphaBits.
		#colorBits -> self colorBits.
		#depthBits -> self depthBits.
		#stencilBits -> self stencilBits.
		#multisapling -> self multisapling.
		#hasMultisampling -> self hasMultisampling.
		#isDoubleBuffer -> self isDoubleBuffer.
		#isHardwareAccelerated -> self isHardwareAccelerated.
		#isSrgb -> self isSrgb.
		#isStereoscopy -> self isStereoscopy.
	 } asOrderedDictionary gtItemsFor: aView)
			title: 'Info';
			priority: 2
]

{ #category : #testing }
GlutinPixelFormat >> hasMultisampling [
	<return: #Boolean>
	
	^ self primHasMultisampling
]

{ #category : #testing }
GlutinPixelFormat >> isDoubleBuffer [
	<return: #Boolean>
	
	^ self primIsDoubleBuffer
]

{ #category : #testing }
GlutinPixelFormat >> isHardwareAccelerated [
	<return: #Boolean>
	
	^ self primIsHardwareAccelerated
]

{ #category : #testing }
GlutinPixelFormat >> isSrgb [
	<return: #Boolean>
	
	^ self primIsSrgb
]

{ #category : #testing }
GlutinPixelFormat >> isStereoscopy [
	<return: #Boolean>
	
	^ self primIsStereoscopy
]

{ #category : #accessing }
GlutinPixelFormat >> multisapling [
	<return: #Number>
	
	^ self primGetMultisampling
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primGetAlphaBits [
	^ self ffiCall: #(uint8 glutin_pixel_format_get_alpha_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primGetColorBits [
	^ self ffiCall: #(uint8 glutin_pixel_format_get_color_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primGetDepthBits [
	^ self ffiCall: #(uint8 glutin_pixel_format_get_depth_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primGetMultisampling [
	^ self ffiCall: #(uint16 glutin_pixel_format_get_multisampling(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primGetStencilBits [
	^ self ffiCall: #(uint8 glutin_pixel_format_get_stencil_bits(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primHasMultisampling [
	^ self ffiCall: #(bool glutin_pixel_format_has_multisampling(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primIsDoubleBuffer [
	^ self ffiCall: #(bool glutin_pixel_format_is_double_buffer(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primIsHardwareAccelerated [
	^ self ffiCall: #(bool glutin_pixel_format_is_hardware_accelerated(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primIsSrgb [
	^ self ffiCall: #(bool glutin_pixel_format_is_srgb(self))
]

{ #category : #'private - ffi' }
GlutinPixelFormat >> primIsStereoscopy [
	^ self ffiCall: #(bool glutin_pixel_format_is_stereoscopy(self))
]

{ #category : #printing }
GlutinPixelFormat >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	aStream
		nextPut: ${;
		nextPutAll: ' alphaBits: ';
		print: self alphaBits.
	aStream
		nextPutAll: ' colorBits: ';
		print: self colorBits.
	aStream
		nextPutAll: ' depthBits: ';
		print: self depthBits.
	aStream
		nextPutAll: ' stencilBits: ';
		print: self stencilBits.
	aStream
		nextPutAll: ' multisapling: ';
		print: self multisapling.
	aStream
		space;
		nextPut: $}
]

{ #category : #accessing }
GlutinPixelFormat >> stencilBits [
	<return: #Number>
	
	^ self primGetStencilBits
]
