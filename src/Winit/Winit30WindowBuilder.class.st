Class {
	#name : #Winit30WindowBuilder,
	#superclass : #RustWindowBuilder,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-External'
}

{ #category : #'private - ffi' }
Winit30WindowBuilder class >> primCreate [
	^ self ffiCall: #(void* winit_window_attributes_new())
]

{ #category : #'private - ffi' }
Winit30WindowBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_window_attributes_release(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithAlwaysOnTop: aBoolean [
	^ self ffiCall: #(void winit_window_attributes_with_always_on_top(self, bool aBoolean))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithDecorations: aBoolean [
	^ self ffiCall: #(void winit_window_attributes_with_decorations(self, bool aBoolean))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithFullSize: aBoolean [
	^ self ffiCall: #(void winit_window_attributes_with_full_size(self, bool aBoolean))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithMaximized: aBoolean [
	^ self ffiCall: #(void winit_window_attributes_with_maximized(self, bool aBoolean))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithResizable: aBoolean [
	^ self ffiCall: #(void winit_window_attributes_with_resizable(self, bool aBoolean))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithTitle: aStringBox [
	^ self ffiCall: #(void winit_window_attributes_with_title(self, GtStringBox aStringBox))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithTransparency: aBoolean [
	^ self ffiCall: #(void winit_window_attributes_with_transparency(self, bool aBoolean))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithVisibility: aBoolean [
	^ self ffiCall: #(void winit_window_attributes_with_visibility(self, bool aBoolean))
]

{ #category : #'private - ffi' }
Winit30WindowBuilder >> primWithWidth: aWidth height: aHeight [
	^ self ffiCall: #(void winit_window_attributes_with_dimensions(self, float64 aWidth, float64 aHeight))
]
