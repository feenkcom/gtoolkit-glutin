Class {
	#name : #WinitLibrary,
	#superclass : #RustWindowingLibrary,
	#traits : 'TGtWithStringBox + TGtWithSizeBoxU32 + TGtWithPointBoxI32 + TGtWithU128Box',
	#classTraits : 'TGtWithStringBox classTrait + TGtWithSizeBoxU32 classTrait + TGtWithPointBoxI32 classTrait + TGtWithU128Box classTrait',
	#category : #'Glutin-Library'
}

{ #category : #'class initialization' }
WinitLibrary class >> initialize [
	SessionManager default registerUserClassNamed: self name
]

{ #category : #'class initialization' }
WinitLibrary class >> startUp: isANewSession [
	isANewSession
		ifTrue: [ self initEnvLogger ]
]

{ #category : #'accessing platform' }
WinitLibrary >> androidLibraryName [
	^ 'libWinit.so'
]

{ #category : #'accessing platform' }
WinitLibrary >> macLibraryName [
	^ FFIMacLibraryFinder findLibrary: 'libWinit.dylib'
]

{ #category : #'private - ffi' }
WinitLibrary >> primInitEnvLogger [
	^ self ffiCall: #(void winit_init_logger())
]

{ #category : #'private - ffi' }
WinitLibrary >> primTest [
	^ self ffiCall: #(bool winit_test())
]

{ #category : #'accessing platform' }
WinitLibrary >> unix32LibraryName [
	^ FFIUnix32LibraryFinder findLibrary: 'libWinit.so'
]

{ #category : #'accessing platform' }
WinitLibrary >> unix64LibraryName [
	^ FFIUnix64LibraryFinder findLibrary: 'libWinit.so'
]

{ #category : #'accessing platform' }
WinitLibrary >> win32LibraryName [
	^ FFIWindowsLibraryFinder findLibrary: 'Winit.dll'
]
