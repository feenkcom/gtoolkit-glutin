Class {
	#name : #GlutinWindowBuilder,
	#superclass : #RustWindowBuilder,
	#traits : 'TGlutin',
	#classTraits : 'TGlutin classTrait',
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
