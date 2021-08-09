Class {
	#name : #GlutinLibrary,
	#superclass : #FFILibrary,
	#classInstVars : [
		'MouseWheelScrollSpeed'
	],
	#category : #Glutin
}

{ #category : #'library path' }
GlutinLibrary class >> ffiLibrary [
	^ self
]

{ #category : #'library path' }
GlutinLibrary class >> ffiLibraryName [
	^ self
]

{ #category : #accessing }
GlutinLibrary class >> initEnvLogger [
	self uniqueInstance initEnvLogger
]

{ #category : #'class initialization' }
GlutinLibrary class >> initialize [
	SessionManager default registerUserClassNamed: self name
]

{ #category : #installation }
GlutinLibrary class >> install [
	<script: 'self install'>
	| installer |

	installer := #GtLibraryInstaller asClass new.
	installer library: 'Glutin'.
	installer version: 'development'.
	installer icon: (Form extent: 1@1 depth: 32).
	installer binary: 'libGlutin'.
	installer url: 'https://dl.feenk.com/{library}/{platform}/{version}/{arch}/{binary}.{extension}'.
	installer works: [ GlutinSameThreadLibrary uniqueInstance hasModule ].

	installer run
]

{ #category : #settings }
GlutinLibrary class >> mouseWheelScrollSpeed [
	"An additional speed factor applied to mouse wheel scroll delta"
	<return: #Number>

	^ MouseWheelScrollSpeed ifNil: [ OSPlatform current glutinDefaultMouseWheelScrollSpeed ]
]

{ #category : #settings }
GlutinLibrary class >> mouseWheelScrollSpeed: aNumber [
	MouseWheelScrollSpeed := aNumber
]

{ #category : #settings }
GlutinLibrary class >> preferencesGroup [
	^ 	#appearance
]

{ #category : #settings }
GlutinLibrary class >> preferencesOn: aBuilder [
	<systemsettings>
	(aBuilder group: #Glutin)
		label: 'Glutin';
		description: 'Glutin settings';
		parent: self preferencesGroup;
		with: [
			(aBuilder range: #mouseWheelScrollSpeed)
				parent: #Glutin;
				order: 1;
				label: 'Scroll wheel speed';
				description: 'Specify mouse wheel scroll speed factor for Glutin windows';
				target: self;
				range: (0.3 to: 20 by: 0.1) ]
]

{ #category : #'private - ffi' }
GlutinLibrary class >> primPrint: aString [
	^ self ffiCall: #(void glutin_print (GtBoxerString aString))
]

{ #category : #'private - ffi' }
GlutinLibrary class >> primPrintln: aString [
	^ self ffiCall: #(void glutin_println (GtBoxerString aString))
]

{ #category : #printing }
GlutinLibrary class >> print: aString [
	| aBoxerString |
	
	aBoxerString := GtBoxerString fromString: aString.
	[ self primPrint: aBoxerString ]
		ensure: [ aBoxerString release ]
]

{ #category : #printing }
GlutinLibrary class >> println: aString [
	| aBoxerString |
	
	aBoxerString := GtBoxerString fromString: aString.
	[ self primPrintln: aBoxerString ]
		ensure: [ aBoxerString release ]
]

{ #category : #'class initialization' }
GlutinLibrary class >> startUp: isANewSession [
	isANewSession
		ifTrue: [
			self initEnvLogger ]
]

{ #category : #'api - library' }
GlutinLibrary >> detectLibrary: aFileName [
	"Pharo9 introduced a platform specific FFILibraryFinder which should be used instead of this custom implementation"

	^ ({ Smalltalk imageDirectory . Smalltalk vmDirectory . Smalltalk vmBinary parent / 'Plugins'. FileSystem workingDirectory }
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

{ #category : #'api - logger' }
GlutinLibrary >> initEnvLogger [
	[ self primInitEnvLogger ]
		on: Error
		do: [ :e | NonInteractiveTranscript stdout nextPutAll: '[Glutin] Could not init env logger'; cr ]
]

{ #category : #'accessing platform' }
GlutinLibrary >> macLibraryName [
	^ self class environment
		at: #FFIMacLibraryFinder
		ifPresent: [ :aLibraryFinder | aLibraryFinder findLibrary: 'libGlutin.dylib' ]
		ifAbsent: [ self detectLibrary: 'libGlutin.dylib' ]
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
	^ self class environment
		at: #FFIUnix32LibraryFinder
		ifPresent: [ :aLibraryFinder | aLibraryFinder findLibrary: 'libGlutin.so' ]
		ifAbsent: [ self detectLibrary: 'libGlutin.so' ]
]

{ #category : #'accessing platform' }
GlutinLibrary >> unix64LibraryName [
	^ self class environment
		at: #FFIUnix64LibraryFinder
		ifPresent: [ :aLibraryFinder | aLibraryFinder findLibrary: 'libGlutin.so' ]
		ifAbsent: [ self detectLibrary: 'libGlutin.so' ]
]

{ #category : #'accessing platform' }
GlutinLibrary >> win32LibraryName [
	^ self class environment
		at: #FFIWindowsLibraryFinder
		ifPresent: [ :aLibraryFinder | aLibraryFinder findAnyLibrary: #('Glutin.dll' 'libGlutin.dll') ]
		ifAbsent: [ self detectLibrary: 'libGlutin.dll' ]
]
