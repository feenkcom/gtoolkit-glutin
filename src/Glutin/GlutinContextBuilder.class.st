Class {
	#name : #GlutinContextBuilder,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#category : #Glutin
}

{ #category : #'api - instantiation' }
GlutinContextBuilder class >> create [
	^ self primCreate autoRelease
]

{ #category : #'library path' }
GlutinContextBuilder class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> new [
	^ self create
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> possibleAlphaBits [
	"Without alpha"

	^ #(8 0)
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> possibleColorBits [
	"Without alpha"

	^ #(24 16 8)
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> possibleGlRequests [
	
	^ {
		#withGlLatest -> #()
	}, (self possibleOpenGlVersions collect: [ :eachVersion |
		#withGl:thenGles: -> { eachVersion . eachVersion }
	])
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> possibleOpenGlVersions [
	^ { 
		#(4 6).
		#(4 5).
		#(4 4).
		#(4 3).
		#(4 2).
		#(4 1).
		#(4 0).
		#(3 3).
		#(3 2).
		#(3 1).
		#(3 0).
		#(2 1).
		#(2 0).
		#(1 5).
		#(1 4).
		#(1 3).
		#(1 2).
		#(1 2).
		#(1 1).
		#(1 0)
	}
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> possiblePixelFormats [
	"Without alpha"

	^ Array streamContents: [ :aStream |
		| theColorBits theAlphaBits |
	
		theColorBits := self possibleColorBits.
		theAlphaBits := self possibleAlphaBits.

		theColorBits do: [ :eachColorBit | theAlphaBits do: [ :eachAlphaBit |
			aStream nextPut: { eachColorBit . eachAlphaBit } ] ] ]
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> possibleSrgbValues [
	^ #(true false)
]

{ #category : #'private - ffi' }
GlutinContextBuilder class >> primCreate [
	^ self ffiCall: #(#GlutinContextBuilder glutin_create_context_builder())
]

{ #category : #'private - ffi' }
GlutinContextBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_context_builder(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinContextBuilder class >> primTryContext: aContextBuilder eventLoop: anEventLoop [
	^ self ffiCall: #(bool glutin_try_headless_context(GlutinEventLoop anEventLoop, GlutinContextBuilder aContextBuilder))
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> profilesDo: aBlock [
	| theGlRequests thePixelFormats theSrgbValues aCounter |
	
	aCounter := 0.
	
	theGlRequests := self possibleGlRequests.
	thePixelFormats := self possiblePixelFormats.
	theSrgbValues := self possibleSrgbValues.
	
	theGlRequests do: [ :eachGlRequest |
		thePixelFormats do: [ :eachFormat |
			theSrgbValues do: [ :eachSrgb |
				| eachProfile |
				
				eachProfile := self new
					withDoubleBuffer: true;
					withMultisampling: 0;
					withDepthBuffer: 24;
					withStencilBuffer: 8;
					withPixelFormatColor: eachFormat first alpha: eachFormat second;
					withSrgb: eachSrgb;
					withVsync: false.
					
				eachProfile perform: eachGlRequest key withArguments: eachGlRequest value.
				
				aCounter := aCounter + 1.
				aBlock value: eachProfile value: aCounter ] ] ]
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> mutate: aHandle [

	self
		assert: [ handle ~= aHandle ]
		description: [ 'Can not replace a handle with the same one' ].
	
	(FFIExternalResourceManager uniqueInstance instVarNamed: #registry) remove: self ifAbsent: [ ].
	"we don't release previous pointer manually because it is freed by native methods"
	handle := aHandle.
	self autoRelease
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> nullify [
	self getHandle beNull.
	self release
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithDepthBuffer: bits [
	^ self ffiCall: #(void* glutin_context_builder_with_depth_buffer(
		GlutinContextBuilder self,
		uint8 bits))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithDoubleBuffer: aBoolean [
	^ self ffiCall: #(void* glutin_context_builder_with_double_buffer(GlutinContextBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithGlLatest [
	^ self ffiCall: #(void* glutin_context_builder_with_gl_latest(
		GlutinContextBuilder self))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithGlMajor: openglMajor minor: openglMinor glesMajor: glesMajor minor: glesMinor [
	^ self ffiCall: #(void* glutin_context_builder_with_gl_then_gles(
		GlutinContextBuilder self,
		uint8 openglMajor,
		uint8 openglMinor,
		uint8 glesMajor,
		uint8 glesMinor))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithGlProfileCore [
	^ self ffiCall: #(void* glutin_context_builder_with_gl_profile_core(
		GlutinContextBuilder self))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithMultisampling: samples [
	^ self ffiCall: #(void* glutin_context_builder_with_multisampling(
		GlutinContextBuilder self,
		uint16 samples))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithPixelFormatColor: colorBits alpha: alphaBits [
	^ self ffiCall: #(void* glutin_context_builder_with_pixel_format(
		GlutinContextBuilder self,
		uint8 colorBits,
		uint8 alphaBits))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithSrgb: aBoolean [
	^ self ffiCall: #(void* glutin_context_builder_with_srgb(GlutinContextBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithStencilBuffer: bits [
	^ self ffiCall: #(void* glutin_context_builder_with_stencil_buffer(
		GlutinContextBuilder self,
		uint8 bits))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithVsync: aBoolean [
	^ self ffiCall: #(void* glutin_context_builder_with_vsync(GlutinContextBuilder self, bool aBoolean))
]

{ #category : #accesssing }
GlutinContextBuilder >> withDepthBuffer: aNumber [
	self mutate: (self primWithDepthBuffer: aNumber)
]

{ #category : #accesssing }
GlutinContextBuilder >> withDoubleBuffer: aBoolean [
	self mutate: (self primWithDoubleBuffer: aBoolean)
]

{ #category : #accesssing }
GlutinContextBuilder >> withGl: aGlVersionArray thenGles: aGlesVersionArray [
	self mutate: (self
		primWithGlMajor: aGlVersionArray first
		minor: aGlVersionArray second
		glesMajor: aGlesVersionArray first
		minor: aGlesVersionArray second)
]

{ #category : #accesssing }
GlutinContextBuilder >> withGlLatest [
	self mutate: (self primWithGlLatest)
]

{ #category : #accesssing }
GlutinContextBuilder >> withGlProfileCore [
	self mutate: (self primWithGlProfileCore)
]

{ #category : #accesssing }
GlutinContextBuilder >> withMultisampling: aNumber [
	self mutate: (self primWithMultisampling: aNumber)
]

{ #category : #accesssing }
GlutinContextBuilder >> withPixelFormatColor: theColorBits alpha: theAlphaBits [
	self mutate: (self primWithPixelFormatColor: theColorBits alpha: theAlphaBits)
]

{ #category : #accesssing }
GlutinContextBuilder >> withSrgb: aBoolean [
	self mutate: (self primWithSrgb: aBoolean)
]

{ #category : #accesssing }
GlutinContextBuilder >> withStencilBuffer: aNumber [
	self mutate: (self primWithStencilBuffer: aNumber)
]

{ #category : #accesssing }
GlutinContextBuilder >> withVsync: aBoolean [
	self mutate: (self primWithVsync: aBoolean)
]
