Class {
	#name : #GlutinLibrary,
	#superclass : #RustWindowingLibrary,
	#traits : 'TGtWithStringBox + TGtWithSizeBoxU32 + TGtWithPointBoxI32 + TGtWithU128Box',
	#classTraits : 'TGtWithStringBox classTrait + TGtWithSizeBoxU32 classTrait + TGtWithPointBoxI32 classTrait + TGtWithU128Box classTrait',
	#category : #'Glutin-Library'
}

{ #category : #'class initialization' }
GlutinLibrary class >> initialize [
	SessionManager default registerUserClassNamed: self name
]

{ #category : #'class initialization' }
GlutinLibrary class >> startUp: isANewSession [
	isANewSession
		ifTrue: [ self initEnvLogger ]
]

{ #category : #'accessing platform' }
GlutinLibrary >> macLibraryName [
	^ FFIMacLibraryFinder findLibrary: 'libGlutin.dylib'
]

{ #category : #'private - ffi' }
GlutinLibrary >> primInitEnvLogger [
	^ self ffiCall: #(void glutin_init_logger())
]

{ #category : #'private - ffi' }
GlutinLibrary >> primTest [
	^ self ffiCall: #(bool glutin_test())
]

{ #category : #'accessing platform' }
GlutinLibrary >> unix32LibraryName [
	^ FFIUnix32LibraryFinder findLibrary: 'libGlutin.so'
]

{ #category : #'accessing platform' }
GlutinLibrary >> unix64LibraryName [
	^ FFIUnix64LibraryFinder findLibrary: 'libGlutin.so'
]

{ #category : #'accessing platform' }
GlutinLibrary >> win32LibraryName [
	^ FFIWindowsLibraryFinder findLibrary: 'Glutin.dll'
]
