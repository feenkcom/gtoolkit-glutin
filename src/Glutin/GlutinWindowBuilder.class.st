Class {
	#name : #GlutinWindowBuilder,
	#superclass : #GlutinExternalObject,
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
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
GlutinWindowBuilder class >> primCreate [
	^ self ffiCall: #(void* glutin_create_window_builder())
]

{ #category : #'private - ffi' }
GlutinWindowBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_window_builder(void** aHandle))
]

{ #category : #accessing }
GlutinWindowBuilder >> alwaysOnTop [
	^ alwaysOnTop
]

{ #category : #accessing }
GlutinWindowBuilder >> alwaysOnTop: aBoolean [
	alwaysOnTop := aBoolean.
	self primWithAlwaysOnTop: aBoolean
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
	self primWithWidth: aPoint x height: aPoint y
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
GlutinWindowBuilder >> nullify [
	self release
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithAlwaysOnTop: aBoolean [
	^ self ffiCall: #(void glutin_window_builder_with_always_on_top(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithDecorations: aBoolean [
	^ self ffiCall: #(void glutin_window_builder_with_decorations(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithFullSize: aBoolean [
	^ self ffiCall: #(void glutin_window_builder_with_full_size(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithMaximized: aBoolean [
	^ self ffiCall: #(void glutin_window_builder_with_maximized(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithResizable: aBoolean [
	^ self ffiCall: #(void glutin_window_builder_with_resizable(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithTitle: aGtBoxerString [
	^ self ffiCall: #(void glutin_window_builder_with_title(self, GtBoxerString aGtBoxerString))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithTransparency: aBoolean [
	^ self ffiCall: #(void glutin_window_builder_with_transparency(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithVisibility: aBoolean [
	^ self ffiCall: #(void glutin_window_builder_with_visibility(self, bool aBoolean))
]

{ #category : #'private - ffi' }
GlutinWindowBuilder >> primWithWidth: aWidth height: aHeight [
	^ self ffiCall: #(void glutin_window_builder_with_dimensions(self, float64 aWidth, float64 aHeight))
]

{ #category : #accessing }
GlutinWindowBuilder >> title [
	^ title
]

{ #category : #accessing }
GlutinWindowBuilder >> title: aString [
	
	title := aString.
	
	GtBoxerString
		fromString: aString
		during: [ :aGtBoxerString | self primWithTitle: aGtBoxerString ]
]

{ #category : #accessing }
GlutinWindowBuilder >> withDecorations [
	^ withDecorations
]

{ #category : #accessing }
GlutinWindowBuilder >> withDecorations: aBoolean [
	withDecorations := aBoolean.
	self primWithDecorations: aBoolean
]

{ #category : #accessing }
GlutinWindowBuilder >> withFullSize [
	^ withFullSize
]

{ #category : #accessing }
GlutinWindowBuilder >> withFullSize: aBoolean [
	withFullSize := aBoolean.
	self primWithFullSize: aBoolean
]

{ #category : #accessing }
GlutinWindowBuilder >> withMaximized [
	^ withMaximized
]

{ #category : #accessing }
GlutinWindowBuilder >> withMaximized: aBoolean [
	withMaximized := aBoolean.
	self primWithMaximized: aBoolean
]

{ #category : #accessing }
GlutinWindowBuilder >> withResizable [
	^ withResizable
]

{ #category : #accessing }
GlutinWindowBuilder >> withResizable: aBoolean [
	withResizable := aBoolean.
	self primWithResizable: aBoolean
]

{ #category : #accessing }
GlutinWindowBuilder >> withTransparency [
	^ withTransparency
]

{ #category : #accessing }
GlutinWindowBuilder >> withTransparency: aBoolean [
	withTransparency := aBoolean.
	self primWithTransparency: aBoolean
]

{ #category : #accessing }
GlutinWindowBuilder >> withVisibility [
	^ withVisibility
]

{ #category : #accessing }
GlutinWindowBuilder >> withVisibility: aBoolean [
	withVisibility := aBoolean.
	self primWithVisibility: aBoolean
]
