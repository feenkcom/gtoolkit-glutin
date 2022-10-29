Class {
	#name : #WinitWindowBuilder,
	#superclass : #RustWindowBuilder,
	#traits : 'TWinit',
	#classTraits : 'TWinit classTrait',
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
WinitWindowBuilder class >> primCreate [
	^ self ffiCall: #(void* winit_window_builder_new())
]

{ #category : #'private - ffi' }
WinitWindowBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_window_builder_drop(void* aHandle))
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
