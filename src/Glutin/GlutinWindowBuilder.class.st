Class {
	#name : #GlutinWindowBuilder,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'title',
		'extent',
		'withDecorations',
		'withTransparency',
		'withResizable',
		'withMaximized',
		'alwaysOnTop',
		'withVisibility',
		'withFullSize'
	],
	#category : #Glutin
}

{ #category : #'api - instantiation' }
GlutinWindowBuilder class >> create [
	^ self new
]

{ #category : #'library path' }
GlutinWindowBuilder class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'api - instantiation' }
GlutinWindowBuilder class >> new [
	^ self primCreate autoRelease initialize
]

{ #category : #'private - ffi' }
GlutinWindowBuilder class >> primCreate [
	^ self ffiCall: #(#GlutinWindowBuilder glutin_create_window_builder())
]

{ #category : #'private - ffi' }
GlutinWindowBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_window_builder(void* aHandle))
]

{ #category : #accessing }
GlutinWindowBuilder >> alwaysOnTop [
	^ alwaysOnTop
]

{ #category : #accessing }
GlutinWindowBuilder >> alwaysOnTop: aBoolean [
	alwaysOnTop := aBoolean.
	self mutate: (self primWithAlwaysOnTop: aBoolean)
]

{ #category : #accessing }
GlutinWindowBuilder >> copy [
	^ self class new
		title: self title;
		extent: self extent;
		alwaysOnTop: self alwaysOnTop;
		withDecorations: self withDecorations;
		withTransparency: self withTransparency;
		withResizable: self withResizable;
		withMaximized: self withMaximized;
		withVisibility: self withVisibility;
		withFullSize: self withFullSize
]

{ #category : #accessing }
GlutinWindowBuilder >> extent [
	^ extent
]

{ #category : #accessing }
GlutinWindowBuilder >> extent: aPoint [
	extent := aPoint.
	self mutate: (self primWithWidth: aPoint x height: aPoint y)
]

{ #category : #initialization }
GlutinWindowBuilder >> initialize [
	"no super to not nullify the handle"

	self title: 'Window'.
	self extent: 800@600.
	self alwaysOnTop: false.
	self withDecorations: true.
	self withTransparency: false.
	self withResizable: true.
	self withMaximized: false.
	self withVisibility: true.
	self withFullSize: false
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> mutate: aHandle [

	self
		assert: [ handle ~= aHandle ]
		description: [ 'Can not replace a handle with the same one' ].

	(FFIExternalResourceManager uniqueInstance instVarNamed: #registry) remove: self ifAbsent: [ ].
	"we don't release previous pointer manually because it is freed by native methods"
	handle := aHandle.
	self autoRelease
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> nullify [
	self class warning: 'nullify'.
	self getHandle beNull.
	self release
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithAlwaysOnTop: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_always_on_top(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithDecorations: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_decorations(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithFullSize: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_full_size(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithMaximized: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_maximized(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithResizable: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_resizable(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithTitle: aString [
	^ self ffiCall: #(void* glutin_window_builder_with_title(#GlutinWindowBuilder self, ByteArray aString))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithTransparency: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_transparency(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithVisibility: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_visibility(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithWidth: aWidth height: aHeight [
	^ self ffiCall: #(void* glutin_window_builder_with_dimensions(#GlutinWindowBuilder self, float64 aWidth, float64 aHeight))
]

{ #category : #accessing }
GlutinWindowBuilder >> title [
	^ title
]

{ #category : #accessing }
GlutinWindowBuilder >> title: aString [
	| encodedString |
	title := aString.
	
	encodedString := ByteArray streamContents: [ :aStream |
		ZnUTF8Encoder new 
			next: aString size 
			putAll: aString asString
			startingAt: 1 
			toStream: aStream.
		aStream nextPut: 0 ].
	
	self mutate: (self primWithTitle: encodedString)
]

{ #category : #accessing }
GlutinWindowBuilder >> withDecorations [
	^ withDecorations
]

{ #category : #accessing }
GlutinWindowBuilder >> withDecorations: aBoolean [
	withDecorations := aBoolean.
	self mutate: (self primWithDecorations: aBoolean)
]

{ #category : #accessing }
GlutinWindowBuilder >> withFullSize [
	^ withFullSize
]

{ #category : #accessing }
GlutinWindowBuilder >> withFullSize: aBoolean [
	withFullSize := aBoolean.
	self mutate: (self primWithFullSize: aBoolean)
]

{ #category : #accessing }
GlutinWindowBuilder >> withMaximized [
	^ withMaximized
]

{ #category : #accessing }
GlutinWindowBuilder >> withMaximized: aBoolean [
	withMaximized := aBoolean.
	self mutate: (self primWithMaximized: aBoolean)
]

{ #category : #accessing }
GlutinWindowBuilder >> withResizable [
	^ withResizable
]

{ #category : #accessing }
GlutinWindowBuilder >> withResizable: aBoolean [
	withResizable := aBoolean.
	self mutate: (self primWithResizable: aBoolean)
]

{ #category : #accessing }
GlutinWindowBuilder >> withTransparency [
	^ withTransparency
]

{ #category : #accessing }
GlutinWindowBuilder >> withTransparency: aBoolean [
	withTransparency := aBoolean.
	self mutate: (self primWithTransparency: aBoolean)
]

{ #category : #accessing }
GlutinWindowBuilder >> withVisibility [
	^ withVisibility
]

{ #category : #accessing }
GlutinWindowBuilder >> withVisibility: aBoolean [
	withVisibility := aBoolean.
	self mutate: (self primWithVisibility: aBoolean)
]
