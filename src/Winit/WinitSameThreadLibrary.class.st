Class {
	#name : #WinitSameThreadLibrary,
	#superclass : #WinitLibrary,
	#category : #'Winit-Library'
}

{ #category : #installation }
WinitSameThreadLibrary class >> initLogger [
	self uniqueInstance primInitLogger
]

{ #category : #'private - ffi' }
WinitSameThreadLibrary >> calloutAPIClass [
	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFCalloutAPI ]
		ifFalse: [ super calloutAPIClass ]
]

{ #category : #testing }
WinitSameThreadLibrary >> hasModule [
	"Return if there is a loadable and working Glutin library installed, false otherwise"
	<return: #Boolean>
	| aResult |

	aResult := nil.
	
	[ aResult := self primTest ]
		on: Error
		do: [ :e | aResult := false ].

	^ aResult ifNil: [ false ]
]

{ #category : #'private - ffi' }
WinitSameThreadLibrary >> primInitLogger [
	^ self ffiCall: #(void winit_init_logger())
]

{ #category : #'private - ffi' }
WinitSameThreadLibrary >> primTest [
	^ self ffiCall: #(bool winit_test())
]

{ #category : #'private - ffi' }
WinitSameThreadLibrary >> runner [ 

	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFSameThreadRunner uniqueInstance ]
		ifFalse: [ super runner ]
]
