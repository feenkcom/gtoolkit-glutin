Class {
	#name : #WinitWindowBuilder,
	#superclass : #WinitExternalObject,
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
	#category : #'Winit-External'
}

{ #category : #'private - ffi' }
WinitWindowBuilder class >> primCreate [
	^ self ffiCall: #(void* winit_window_builder_new())
]

{ #category : #'private - ffi' }
WinitWindowBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_window_builder_drop(void** aHandle))
]

{ #category : #accessing }
WinitWindowBuilder >> alwaysOnTop [
	^ alwaysOnTop
]

{ #category : #accessing }
WinitWindowBuilder >> alwaysOnTop: aBoolean [
	alwaysOnTop := aBoolean.
	self primWithAlwaysOnTop: aBoolean
]

{ #category : #accessing }
WinitWindowBuilder >> copy [
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
WinitWindowBuilder >> extent [
	^ extent
]

{ #category : #accessing }
WinitWindowBuilder >> extent: aPoint [
	extent := aPoint.
	self primWithWidth: aPoint x height: aPoint y
]

{ #category : #initialization }
WinitWindowBuilder >> initialize [
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
WinitWindowBuilder >> nullify [
	self release
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithAlwaysOnTop: aBoolean [
	^ self ffiCall: #(void winit_window_builder_with_always_on_top(self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithDecorations: aBoolean [
	^ self ffiCall: #(void winit_window_builder_with_decorations(self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithFullSize: aBoolean [
	^ self ffiCall: #(void winit_window_builder_with_full_size(self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithMaximized: aBoolean [
	^ self ffiCall: #(void winit_window_builder_with_maximized(self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithResizable: aBoolean [
	^ self ffiCall: #(void winit_window_builder_with_resizable(self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithTitle: aGtBoxerString [
	^ self ffiCall: #(void winit_window_builder_with_title(self, GtBoxerString aGtBoxerString))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithTransparency: aBoolean [
	^ self ffiCall: #(void winit_window_builder_with_transparency(self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithVisibility: aBoolean [
	^ self ffiCall: #(void winit_window_builder_with_visibility(self, bool aBoolean))
]

{ #category : #'private - ffi' }
WinitWindowBuilder >> primWithWidth: aWidth height: aHeight [
	^ self ffiCall: #(void winit_window_builder_with_dimensions(self, float64 aWidth, float64 aHeight))
]

{ #category : #accessing }
WinitWindowBuilder >> title [
	^ title
]

{ #category : #accessing }
WinitWindowBuilder >> title: aString [
	
	title := aString.
	
	GtBoxerString
		fromString: aString
		during: [ :aGtBoxerString | self primWithTitle: aGtBoxerString ]
]

{ #category : #accessing }
WinitWindowBuilder >> withDecorations [
	^ withDecorations
]

{ #category : #accessing }
WinitWindowBuilder >> withDecorations: aBoolean [
	withDecorations := aBoolean.
	self primWithDecorations: aBoolean
]

{ #category : #accessing }
WinitWindowBuilder >> withFullSize [
	^ withFullSize
]

{ #category : #accessing }
WinitWindowBuilder >> withFullSize: aBoolean [
	withFullSize := aBoolean.
	self primWithFullSize: aBoolean
]

{ #category : #accessing }
WinitWindowBuilder >> withMaximized [
	^ withMaximized
]

{ #category : #accessing }
WinitWindowBuilder >> withMaximized: aBoolean [
	withMaximized := aBoolean.
	self primWithMaximized: aBoolean
]

{ #category : #accessing }
WinitWindowBuilder >> withResizable [
	^ withResizable
]

{ #category : #accessing }
WinitWindowBuilder >> withResizable: aBoolean [
	withResizable := aBoolean.
	self primWithResizable: aBoolean
]

{ #category : #accessing }
WinitWindowBuilder >> withTransparency [
	^ withTransparency
]

{ #category : #accessing }
WinitWindowBuilder >> withTransparency: aBoolean [
	withTransparency := aBoolean.
	self primWithTransparency: aBoolean
]

{ #category : #accessing }
WinitWindowBuilder >> withVisibility [
	^ withVisibility
]

{ #category : #accessing }
WinitWindowBuilder >> withVisibility: aBoolean [
	withVisibility := aBoolean.
	self primWithVisibility: aBoolean
]
