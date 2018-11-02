Class {
	#name : #WinitWindowBuilder,
	#superclass : #FFIExternalObject,
	#traits : 'TWinitLibrary + TWinitPtr',
	#classTraits : 'TWinitLibrary classTrait + TWinitPtr classTrait',
	#instVars : [
		'title',
		'withDecorations',
		'withTransparency',
		'withResizable'
	],
	#category : #'OSWindow-Winit'
}

{ #category : #'api - instantiation' }
WinitWindowBuilder class >> create [
	^ self new
]

{ #category : #'api - instantiation' }
WinitWindowBuilder class >> new [
	^ self primCreate autoRelease initialize
]

{ #category : #'private - ffi' }
WinitWindowBuilder class >> primCreate [
	^ self ffiCall: #(WinitWindowBuilder winit_create_window_builder())
]

{ #category : #'private - ffi' }
WinitWindowBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_destroy_window_builder(void* aHandle))
]

{ #category : #initialization }
WinitWindowBuilder >> initialize [
	"no super to not nullify the handle"

	self title: 'Window'.
	self withDecorations: true.
	self withTransparency: false.
	self withResizable: true
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> mutate: aHandle [

	self
		assert: [ handle ~= aHandle ]
		description: [ 'Can not replace a handle with the same one' ].

	self release.
	handle := aHandle.
	self autoRelease
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithDecorations: aBoolean [
	^ self ffiCall: #(void* winit_window_builder_with_decorations(WinitWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithResizable: aBoolean [
	^ self ffiCall: #(void* winit_window_builder_with_resizable(WinitWindowBuilder self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithTitle: aString [
	^ self ffiCall: #(void* winit_window_builder_with_title(WinitWindowBuilder self, String aString))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithTransparency: aBoolean [
	^ self ffiCall: #(void* winit_window_builder_with_transparency(WinitWindowBuilder self, bool aBoolean))
]

{ #category : #accessing }
WinitWindowBuilder >> title [
	^ title
]

{ #category : #accessing }
WinitWindowBuilder >> title: aString [
	title := aString.
	self mutate: (self primWithTitle: aString)
]

{ #category : #accessing }
WinitWindowBuilder >> withDecorations [
	^ withDecorations
]

{ #category : #accessing }
WinitWindowBuilder >> withDecorations: aBoolean [
	withDecorations := aBoolean.
	self mutate: (self primWithDecorations: aBoolean)
]

{ #category : #accessing }
WinitWindowBuilder >> withResizable [
	^ withResizable
]

{ #category : #accessing }
WinitWindowBuilder >> withResizable: aBoolean [
	withResizable := aBoolean.
	self mutate: (self primWithResizable: aBoolean)
]

{ #category : #accessing }
WinitWindowBuilder >> withTransparency [
	^ withTransparency
]

{ #category : #accessing }
WinitWindowBuilder >> withTransparency: aBoolean [
	withTransparency := aBoolean.
	self mutate: (self primWithTransparency: aBoolean)
]
