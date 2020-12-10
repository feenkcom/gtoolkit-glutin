Class {
	#name : #GlutinMainThreadNonBlockingLibrary,
	#superclass : #GlutinLibrary,
	#category : #'Glutin-GTookitVM-Library'
}

{ #category : #'private - ffi' }
GlutinMainThreadNonBlockingLibrary >> calloutAPIClass [
	^ TFCalloutAPI
]

{ #category : #'private - ffi' }
GlutinMainThreadNonBlockingLibrary >> runner [
	| aRunner |

	aRunner := GToolkitVM current isOnWorkerThread
		ifTrue: [ GToolkitVMMainThreadNonBlockingRunner uniqueInstance ]
		ifFalse: [ TFSameThreadRunner uniqueInstance ].
	
	^ aRunner
]
