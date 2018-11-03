Class {
	#name : #OSWinitDriver,
	#superclass : #OSWindowDriver,
	#traits : 'TWinitLibrary',
	#classTraits : 'TWinitLibrary classTrait',
	#instVars : [
		'window'
	],
	#category : #'OSWindow-Winit'
}

{ #category : #'window creation' }
OSWinitDriver >> createWindowWithAttributes: anOSWindowAttributes osWindow: osWindow [
	| windowBuilder contextBuilder handle |

	windowBuilder := WinitWindowBuilder new
		title: anOSWindowAttributes title;
		withDecorations: anOSWindowAttributes borderless not;
		withTransparency: false;
		withResizable: anOSWindowAttributes resizable.

	contextBuilder := WinitContextBuilder create.
	
	handle := WinitGLWindow
		windowBuilder: windowBuilder
		contextBuilder: contextBuilder.
		
	window := OSWinitWindowHandle newWithHandle: handle.
	window osWindow: osWindow.

	^ window
]
