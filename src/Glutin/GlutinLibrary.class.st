Class {
	#name : #GlutinLibrary,
	#superclass : #FFILibrary,
	#category : #Glutin
}

{ #category : #'library path' }
GlutinLibrary class >> ffiLibraryName [
	^ self
]

{ #category : #installation }
GlutinLibrary class >> install [
	<script: 'self install'>
	| installer |

	installer := GtLibraryInstaller new.
	installer library: 'Glutin'.
	installer version: 'development'.
	installer icon: (Form extent: 1@1 depth: 32).
	installer binary: 'libGlutin'.
	installer url: 'https://dl.feenk.com/{library}/{platform}/{version}/{arch}/{binary}.{extension}'.
	installer works: [ GlutinLibrary uniqueInstance hasModule ].

	installer run
]

{ #category : #printing }
GlutinLibrary class >> print: aString [
	^ self ffiCall: #(void glutin_print (String aString))
]

{ #category : #printing }
GlutinLibrary class >> println: aString [
	^ self ffiCall: #(void glutin_println (String aString))
]

{ #category : #'accessing platform' }
GlutinLibrary >> detectLibrary: aFileName [
	^ ({ Smalltalk imageDirectory . Smalltalk vmDirectory . FileSystem workingDirectory }
		collect: [ :aPath | aPath asFileReference / aFileName ])
			detect: #exists
			ifFound: #fullName
			ifNone: [ aFileName ]
]

{ #category : #testing }
GlutinLibrary >> hasModule [
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
GlutinLibrary >> macModuleName [
	^ self detectLibrary: 'libGlutin.dylib'
]

{ #category : #'private - ffi' }
GlutinLibrary >> primTest [
	^ self ffiCall: #(bool glutin_test())
]

{ #category : #'accessing platform' }
GlutinLibrary >> unixModuleName [
	^ self detectLibrary: 'libGlutin.so'
]

{ #category : #'accessing platform' }
GlutinLibrary >> win32ModuleName [
	^ self detectLibrary: 'libGlutin.dll'
]
