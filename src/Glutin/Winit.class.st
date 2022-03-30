Class {
	#name : #Winit,
	#superclass : #Object,
	#traits : 'TWinit',
	#classTraits : 'TWinit classTrait',
	#classVars : [
		'AccessMutex'
	],
	#category : #'Glutin-Library'
}

{ #category : #'private - ffi' }
Winit class >> primPrintln: aBoxerString [
	self ffiCall: #(void winit_println(GtBoxerString aBoxerString))
]

{ #category : #accessing }
Winit class >> println: aString [
	GtBoxerString
		fromString: aString
		during: [ :aBoxerString | self primPrintln: aBoxerString ]
]
