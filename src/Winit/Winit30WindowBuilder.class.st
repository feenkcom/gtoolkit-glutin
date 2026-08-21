Class {
	#name : #Winit30WindowBuilder,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
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
Winit30WindowBuilder class >> primCreate [
	^ self ffiCall: #(void* winit_window_attributes_new())
]

{ #category : #'private - ffi' }
Winit30WindowBuilder class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_window_attributes_release(void* aHandle))
]

{ #category : #accessing }
Winit30WindowBuilder >> alwaysOnTop [
	^ alwaysOnTop
]

{ #category : #accessing }
Winit30WindowBuilder >> alwaysOnTop: aBoolean [
	alwaysOnTop := aBoolean.
	self primWithAlwaysOnTop: aBoolean
]

{ #category : #accessing }
Winit30WindowBuilder >> extent [
	^ extent
]

{ #category : #accessing }
Winit30WindowBuilder >> extent: aPoint [
	extent := aPoint.
	self primWithWidth: aPoint x height: aPoint y
]

{ #category : #initialization }
Winit30WindowBuilder >> initialize [
	super initialize.

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
Winit30WindowBuilder >> nullify [
	self release
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

{ #category : #accessing }
Winit30WindowBuilder >> title [
	^ title
]

{ #category : #accessing }
Winit30WindowBuilder >> title: aString [
	title := aString asString.
	self ffiLibrary
		newString: title
		during: [ :aStringBox | self primWithTitle: aStringBox ]
]

{ #category : #accessing }
Winit30WindowBuilder >> withDecorations [
	^ withDecorations
]

{ #category : #accessing }
Winit30WindowBuilder >> withDecorations: aBoolean [
	withDecorations := aBoolean.
	self primWithDecorations: aBoolean
]

{ #category : #accessing }
Winit30WindowBuilder >> withFullSize [
	^ withFullSize
]

{ #category : #accessing }
Winit30WindowBuilder >> withFullSize: aBoolean [
	withFullSize := aBoolean.
	self primWithFullSize: aBoolean
]

{ #category : #accessing }
Winit30WindowBuilder >> withMaximized [
	^ withMaximized
]

{ #category : #accessing }
Winit30WindowBuilder >> withMaximized: aBoolean [
	withMaximized := aBoolean.
	self primWithMaximized: aBoolean
]

{ #category : #accessing }
Winit30WindowBuilder >> withResizable [
	^ withResizable
]

{ #category : #accessing }
Winit30WindowBuilder >> withResizable: aBoolean [
	withResizable := aBoolean.
	self primWithResizable: aBoolean
]

{ #category : #accessing }
Winit30WindowBuilder >> withTransparency [
	^ withTransparency
]

{ #category : #accessing }
Winit30WindowBuilder >> withTransparency: aBoolean [
	withTransparency := aBoolean.
	self primWithTransparency: aBoolean
]

{ #category : #accessing }
Winit30WindowBuilder >> withVisibility [
	^ withVisibility
]

{ #category : #accessing }
Winit30WindowBuilder >> withVisibility: aBoolean [
	withVisibility := aBoolean.
	self primWithVisibility: aBoolean
]
