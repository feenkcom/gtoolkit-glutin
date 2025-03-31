Class {
	#name : #Winit30Library,
	#superclass : #RustWindowingLibrary,
	#traits : 'TGtWithStringBox + TGtWithSizeBoxU32 + TGtWithPointBoxI32 + TGtWithU128Box',
	#classTraits : 'TGtWithStringBox classTrait + TGtWithSizeBoxU32 classTrait + TGtWithPointBoxI32 classTrait + TGtWithU128Box classTrait',
	#category : #'Winit-Library'
}

{ #category : #'class initialization' }
Winit30Library class >> initialize [
	SessionManager default registerUserClassNamed: self name
]

{ #category : #'class initialization' }
Winit30Library class >> startUp: isANewSession [
	isANewSession
		ifTrue: [ self initEnvLogger ]
]

{ #category : #'accessing platform' }
Winit30Library >> androidLibraryName [
	^ 'libWinit30.so'
]

{ #category : #'accessing platform' }
Winit30Library >> macLibraryName [
	^ FFIMacLibraryFinder findLibrary: 'libWinit30.dylib'
]

{ #category : #'private - ffi' }
Winit30Library >> primInitEnvLogger [
	^ self ffiCall: #(void winit_init_logger())
]

{ #category : #'private - ffi' }
Winit30Library >> primTest [
	^ self ffiCall: #(bool winit_test())
]

{ #category : #'accessing platform' }
Winit30Library >> unix32LibraryName [
	^ FFIUnix32LibraryFinder findLibrary: 'libWinit30.so'
]

{ #category : #'accessing platform' }
Winit30Library >> unix64LibraryName [
	^ FFIUnix64LibraryFinder findLibrary: 'libWinit30.so'
]

{ #category : #'accessing platform' }
Winit30Library >> win32LibraryName [
	^ FFIWindowsLibraryFinder findLibrary: 'Winit30.dll'
]
