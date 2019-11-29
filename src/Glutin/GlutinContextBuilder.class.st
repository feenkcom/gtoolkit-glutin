Class {
	#name : #GlutinContextBuilder,
	#superclass : #GlutinExternalObject,
	#category : #'Glutin-External'
}

{ #category : #'instance creation' }
GlutinContextBuilder class >> allProfiles [
	^ Array streamContents: [ :aStream | self profilesDo: [ :eachProfile :eachIndex | aStream nextPut: eachProfile ] ]
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> headless [
	"Create a headless context"
	| anEventLoop |
	
	anEventLoop := GlutinEventLoop new.

	GlutinContextBuilder profilesDo: [ :eachProfile :anIndex |
		(anEventLoop tryHeadlessContext: eachProfile)
			ifTrue: [
				| aHeadlessContext |
				aHeadlessContext := GlutinHeadlessContext fromNativeHandle: (GlutinHeadlessContext primCreate: anEventLoop contextBuilder: eachProfile).
				eachProfile nullify.
			
				aHeadlessContext isValid
					ifTrue: [
						GlutinLibrary println: '[Glutin] Profile #', anIndex asString, ' worked'.
						aHeadlessContext eventsLoop: self.
						^ aHeadlessContext ] ] ].
		
	self error: 'Could not find a suitable OpenGL profile for this system'
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
GlutinContextBuilder class >> possibleDepthBufferValues [
	^ #(32 24 16 8 0)
]

{ #category : #'instance creation' }
GlutinContextBuilder class >> possibleDoubleBufferValues [
	^ #(true false)
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

{ #category : #'instance creation' }
GlutinContextBuilder class >> possibleStencilBufferValues [
	^ #(8 0)
]

{ #category : #'private - ffi' }
GlutinContextBuilder class >> primCreate [
	^ self ffiCall: #(#void* glutin_context_builder_default())
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
	| theGlRequests thePixelFormats theSrgbValues theDoubleBufferValues theDepthBufferValues theStencilBufferValues aCounter |
	
	aCounter := 0.
	
	"let's try a default profile first"
	aBlock value: self new value: aCounter.
	
	theGlRequests := self possibleGlRequests.
	thePixelFormats := self possiblePixelFormats.
	theSrgbValues := self possibleSrgbValues.
	theDoubleBufferValues := self possibleDoubleBufferValues.
	theDepthBufferValues := self possibleDepthBufferValues.
	theStencilBufferValues := self possibleStencilBufferValues.
	
	theDoubleBufferValues do: [ :eachDoubleBuffer |
		theDepthBufferValues do: [ :eachDepthBuffer |
			theStencilBufferValues do: [ :eachStencilBuffer |
				theGlRequests do: [ :eachGlRequest |
					thePixelFormats do: [ :eachFormat |
						theSrgbValues do: [ :eachSrgb |
							| eachProfile |
							
							eachProfile := self new
								withDoubleBuffer: eachDoubleBuffer;
								withMultisampling: 0;
								withDepthBuffer: eachDepthBuffer;
								withStencilBuffer: eachStencilBuffer;
								withPixelFormatColor: eachFormat first alpha: eachFormat second;
								withSrgb: eachSrgb;
								withVsync: false.
								
							eachProfile perform: eachGlRequest key withArguments: eachGlRequest value.
							
							aCounter := aCounter + 1.
							aBlock value: eachProfile value: aCounter ] ] ] ] ] ]
]

{ #category : #'gt-extension' }
GlutinContextBuilder >> gtPixelFormatRequirementsFor: aView [
	<gtView>
	
	^ (self pixelFormatRequirements gtInfoFor: aView) title: 'Pixel format'
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> nullify [
	self release
]

{ #category : #accesssing }
GlutinContextBuilder >> pixelFormatRequirements [
	<return: #GlutinPixelFormatRequirements>

	^ GlutinPixelFormatRequirements fromNativeHandle: self primGetPixelFormatRequirements
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primGetPixelFormatRequirements [
	^ self ffiCall: #(void* glutin_context_builder_get_pixel_format_requirements(self))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithDepthBuffer: bits [
	^ self ffiCall: #(void glutin_context_builder_with_depth_buffer(self, uint8 bits))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithDoubleBuffer: aBoolean [
	^ self ffiCall: #(void glutin_context_builder_with_double_buffer(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithGlLatest [
	^ self ffiCall: #(void glutin_context_builder_with_gl_latest(self))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithGlMajor: openglMajor minor: openglMinor glesMajor: glesMajor minor: glesMinor [
	^ self ffiCall: #(void glutin_context_builder_with_gl_then_gles(
		self,
		uint8 openglMajor,
		uint8 openglMinor,
		uint8 glesMajor,
		uint8 glesMinor))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithGlProfileCore [
	^ self ffiCall: #(void glutin_context_builder_with_gl_profile_core(self))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithMultisampling: samples [
	^ self ffiCall: #(void glutin_context_builder_with_multisampling(self, uint16 samples))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithPixelFormatColor: colorBits alpha: alphaBits [
	^ self ffiCall: #(void glutin_context_builder_with_pixel_format(self, uint8 colorBits, uint8 alphaBits))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithSrgb: aBoolean [
	^ self ffiCall: #(void glutin_context_builder_with_srgb(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithStencilBuffer: bits [
	^ self ffiCall: #(void glutin_context_builder_with_stencil_buffer(self, uint8 bits))
]

{ #category : #'private - ffi' }
GlutinContextBuilder >> primWithVsync: aBoolean [
	^ self ffiCall: #(void glutin_context_builder_with_vsync(self, bool aBoolean))
]

{ #category : #accesssing }
GlutinContextBuilder >> withDepthBuffer: aNumber [
	self primWithDepthBuffer: aNumber
]

{ #category : #accesssing }
GlutinContextBuilder >> withDoubleBuffer: aBoolean [
	self primWithDoubleBuffer: aBoolean
]

{ #category : #accesssing }
GlutinContextBuilder >> withGl: aGlVersionArray thenGles: aGlesVersionArray [
	self
		primWithGlMajor: aGlVersionArray first
		minor: aGlVersionArray second
		glesMajor: aGlesVersionArray first
		minor: aGlesVersionArray second
]

{ #category : #accesssing }
GlutinContextBuilder >> withGlLatest [
	self primWithGlLatest
]

{ #category : #accesssing }
GlutinContextBuilder >> withGlProfileCore [
	self primWithGlProfileCore
]

{ #category : #accesssing }
GlutinContextBuilder >> withMultisampling: aNumber [
	self primWithMultisampling: aNumber
]

{ #category : #accesssing }
GlutinContextBuilder >> withPixelFormatColor: theColorBits alpha: theAlphaBits [
	self primWithPixelFormatColor: theColorBits alpha: theAlphaBits
]

{ #category : #accesssing }
GlutinContextBuilder >> withSrgb: aBoolean [
	self primWithSrgb: aBoolean
]

{ #category : #accesssing }
GlutinContextBuilder >> withStencilBuffer: aNumber [
	self primWithStencilBuffer: aNumber
]

{ #category : #accesssing }
GlutinContextBuilder >> withVsync: aBoolean [
	self primWithVsync: aBoolean
]
