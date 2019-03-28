Class {
	#name : #GlutinWindowBuilder,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'title',
		'withDecorations',
		'withTransparency',
		'withResizable'
	],
	#category : #Winit
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

{ #category : #initialization }
GlutinWindowBuilder >> initialize [
	"no super to not nullify the handle"

	self title: 'Window'.
	self withDecorations: true.
	self withTransparency: false.
	self withResizable: true
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> mutate: aHandle [

	self
		assert: [ handle ~= aHandle ]
		description: [ 'Can not replace a handle with the same one' ].

	self release.
	handle := aHandle.
	self autoRelease
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithDecorations: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_decorations(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithResizable: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_resizable(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithTitle: aString [
	^ self ffiCall: #(void* glutin_window_builder_with_title(#GlutinWindowBuilder self, String aString))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithTransparency: aBoolean [
	^ self ffiCall: #(void* glutin_window_builder_with_transparency(#GlutinWindowBuilder self, bool aBoolean))
]

{ #category : #accessing }
GlutinWindowBuilder >> title [
	^ title
]

{ #category : #accessing }
GlutinWindowBuilder >> title: aString [
	title := aString.
	self mutate: (self primWithTitle: aString)
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
