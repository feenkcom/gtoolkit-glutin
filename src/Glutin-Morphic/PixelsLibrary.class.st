Class {
	#name : #PixelsLibrary,
	#superclass : #FFILibrary,
	#category : #'Glutin-Morphic'
}

{ #category : #'library path' }
PixelsLibrary class >> ffiLibrary [
	^ self
]

{ #category : #logger }
PixelsLibrary class >> initEnvLogger [
	self uniqueInstance initEnvLogger
]

{ #category : #initialization }
PixelsLibrary class >> initialize [
	SessionManager default registerUserClassNamed: self name
]

{ #category : #'system startup' }
PixelsLibrary class >> startUp: isANewSession [
	isANewSession
		ifTrue: [ self initEnvLogger ]
]

{ #category : #testing }
PixelsLibrary >> hasModule [
	"Return if there is a loadable and working Glutin library installed, false otherwise"
	<return: #Boolean>
	| aResult |

	aResult := nil.
	
	[ aResult := self primTest ]
		on: Error
		do: [ :e | aResult := false ].

	^ aResult ifNil: [ false ]
]

{ #category : #logger }
PixelsLibrary >> initEnvLogger [
	[ self primInitEnvLogger ]
		on: Error
		do: [ :e | NonInteractiveTranscript stdout nextPutAll: '[Pixels] Could not init env logger'; cr ]
]

{ #category : #'accessing platform' }
PixelsLibrary >> macLibraryName [
	^ FFIMacLibraryFinder findLibrary: 'libPixels.dylib'
]

{ #category : #'private - ffi' }
PixelsLibrary >> primInitEnvLogger [
	^ self ffiCall: #(void pixels_init_logger())
]

{ #category : #'private - ffi' }
PixelsLibrary >> primTest [
	^ self ffiCall: #(bool pixels_test())
]

{ #category : #'accessing platform' }
PixelsLibrary >> unix32LibraryName [
	^ FFIUnix32LibraryFinder findLibrary: 'libPixels.so'
]

{ #category : #'accessing platform' }
PixelsLibrary >> unix64LibraryName [
	^ FFIUnix64LibraryFinder findLibrary: 'libPixels.so'
]

{ #category : #'accessing platform' }
PixelsLibrary >> win32LibraryName [
	^ FFIWindowsLibraryFinder findLibrary: 'Pixels.dll'
]
