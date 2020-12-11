Class {
	#name : #GlutinMainThreadAsyncLibrary,
	#superclass : #GlutinLibrary,
	#category : #'Glutin-GTookitVM-Library'
}

{ #category : #'private - ffi' }
GlutinMainThreadAsyncLibrary >> calloutAPIClass [
	^ TFCalloutAPI
]

{ #category : #'private - ffi' }
GlutinMainThreadAsyncLibrary >> runner [
	| aRunner |

	aRunner := GToolkitVM current isOnWorkerThread
		ifTrue: [ GToolkitVMMainThreadAsyncRunner uniqueInstance ]
		ifFalse: [ TFSameThreadRunner uniqueInstance ].

	^ aRunner
]
