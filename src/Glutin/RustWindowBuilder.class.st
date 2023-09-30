Class {
	#name : #RustWindowBuilder,
	#superclass : #GtBoxerValueBox,
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

{ #category : #accessing }
RustWindowBuilder >> alwaysOnTop [
	^ alwaysOnTop
]

{ #category : #accessing }
RustWindowBuilder >> alwaysOnTop: aBoolean [
	alwaysOnTop := aBoolean.
	self primWithAlwaysOnTop: aBoolean
]

{ #category : #accessing }
RustWindowBuilder >> copy [
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
RustWindowBuilder >> extent [
	^ extent
]

{ #category : #accessing }
RustWindowBuilder >> extent: aPoint [
	extent := aPoint.
	self primWithWidth: aPoint x height: aPoint y
]

{ #category : #initialization }
RustWindowBuilder >> initialize [
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
RustWindowBuilder >> nullify [
	self release
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithAlwaysOnTop: aBoolean [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithDecorations: aBoolean [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithFullSize: aBoolean [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithMaximized: aBoolean [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithResizable: aBoolean [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithTitle: aGtBoxerString [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithTransparency: aBoolean [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithVisibility: aBoolean [
	self subclassResponsibility
]

{ #category : #'private - ffi' }
RustWindowBuilder >> primWithWidth: aWidth height: aHeight [
	self subclassResponsibility
]

{ #category : #accessing }
RustWindowBuilder >> title [
	^ title
]

{ #category : #accessing }
RustWindowBuilder >> title: aString [

	title := aString asString.
	self ffiLibrary
		newString: title
		during: [ :aStringBox | self primWithTitle: aStringBox ]
]

{ #category : #accessing }
RustWindowBuilder >> withDecorations [
	^ withDecorations
]

{ #category : #accessing }
RustWindowBuilder >> withDecorations: aBoolean [
	withDecorations := aBoolean.
	self primWithDecorations: aBoolean
]

{ #category : #accessing }
RustWindowBuilder >> withFullSize [
	^ withFullSize
]

{ #category : #accessing }
RustWindowBuilder >> withFullSize: aBoolean [
	withFullSize := aBoolean.
	self primWithFullSize: aBoolean
]

{ #category : #accessing }
RustWindowBuilder >> withMaximized [
	^ withMaximized
]

{ #category : #accessing }
RustWindowBuilder >> withMaximized: aBoolean [
	withMaximized := aBoolean.
	self primWithMaximized: aBoolean
]

{ #category : #accessing }
RustWindowBuilder >> withResizable [
	^ withResizable
]

{ #category : #accessing }
RustWindowBuilder >> withResizable: aBoolean [
	withResizable := aBoolean.
	self primWithResizable: aBoolean
]

{ #category : #accessing }
RustWindowBuilder >> withTransparency [
	^ withTransparency
]

{ #category : #accessing }
RustWindowBuilder >> withTransparency: aBoolean [
	withTransparency := aBoolean.
	self primWithTransparency: aBoolean
]

{ #category : #accessing }
RustWindowBuilder >> withVisibility [
	^ withVisibility
]

{ #category : #accessing }
RustWindowBuilder >> withVisibility: aBoolean [
	withVisibility := aBoolean.
	self primWithVisibility: aBoolean
]
