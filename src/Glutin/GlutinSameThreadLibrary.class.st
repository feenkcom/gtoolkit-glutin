Class {
	#name : #GlutinSameThreadLibrary,
	#superclass : #GlutinLibrary,
	#category : #Glutin
}

{ #category : #installation }
GlutinSameThreadLibrary class >> initLogger [
	self uniqueInstance primInitLogger
]

{ #category : #'private - ffi' }
GlutinSameThreadLibrary >> calloutAPIClass [
	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFCalloutAPI ]
		ifFalse: [ super calloutAPIClass ]
]

{ #category : #testing }
GlutinSameThreadLibrary >> hasModule [
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
GlutinSameThreadLibrary >> primInitLogger [
	^ self ffiCall: #(void glutin_init_logger())
]

{ #category : #'private - ffi' }
GlutinSameThreadLibrary >> primTest [
	^ self ffiCall: #(bool glutin_test())
]

{ #category : #'private - ffi' }
GlutinSameThreadLibrary >> runner [ 

	^ ThreadedFFIMigration threadedFFIAvailable
		ifTrue: [ TFSameThreadRunner uniqueInstance ]
		ifFalse: [ super runner ]
]
