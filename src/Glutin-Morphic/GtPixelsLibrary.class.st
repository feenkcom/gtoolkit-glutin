Class {
	#name : #GtPixelsLibrary,
	#superclass : #FFILibrary,
	#classInstVars : [
		'MouseWheelScrollSpeed'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #'library path' }
GtPixelsLibrary class >> ffiLibrary [
	^ self
]

{ #category : #testing }
GtPixelsLibrary >> hasModule [
	"Return if there is a loadable and working Glutin library installed, false otherwise"
	<return: #Boolean>
	| aResult |

	aResult := nil.
	
	[ aResult := self primTest ]
		on: Error
		do: [ :e | aResult := false ].

	^ aResult ifNil: [ false ]
]

{ #category : #'accessing platform' }
GtPixelsLibrary >> macLibraryName [
	^ FFIMacLibraryFinder findLibrary: 'libPixels.dylib'
]

{ #category : #'private - ffi' }
GtPixelsLibrary >> primTest [
	^ self ffiCall: #(bool pixels_test())
]

{ #category : #'accessing platform' }
GtPixelsLibrary >> unix32LibraryName [
	^ FFIUnix32LibraryFinder findLibrary: 'libPixels.so'
]

{ #category : #'accessing platform' }
GtPixelsLibrary >> unix64LibraryName [
	^ FFIUnix64LibraryFinder findLibrary: 'libPixels.so'
]

{ #category : #'accessing platform' }
GtPixelsLibrary >> win32LibraryName [
	^ FFIWindowsLibraryFinder findLibrary: 'Pixels.dll'
]
