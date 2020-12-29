Class {
	#name : #WinitLibrary,
	#superclass : #FFILibrary,
	#classInstVars : [
		'MouseWheelScrollSpeed'
	],
	#category : #'Winit-Library'
}

{ #category : #'library path' }
WinitLibrary class >> ffiLibrary [
	^ self
]

{ #category : #'library path' }
WinitLibrary class >> ffiLibraryName [
	^ self
]

{ #category : #installation }
WinitLibrary class >> install [
	<script: 'self install'>
	| installer |

	installer := (self environment at: #GtLibraryInstaller) new.
	installer library: 'Winit'.
	installer version: 'development'.
	installer icon: (Form extent: 1@1 depth: 32).
	installer binary: 'libWinit'.
	installer url: 'https://dl.feenk.com/{library}/{platform}/{version}/{arch}/{binary}.{extension}'.
	installer works: [ WinitSameThreadLibrary uniqueInstance hasModule ].

	installer run
]

{ #category : #settings }
WinitLibrary class >> mouseWheelScrollSpeed [
	"An additional speed factor applied to mouse wheel scroll delta"
	<return: #Number>

	^ MouseWheelScrollSpeed ifNil: [ OSPlatform current winitDefaultMouseWheelScrollSpeed ]
]

{ #category : #settings }
WinitLibrary class >> mouseWheelScrollSpeed: aNumber [
	MouseWheelScrollSpeed := aNumber
]

{ #category : #settings }
WinitLibrary class >> preferencesGroup [
	^ 	#appearance
]

{ #category : #settings }
WinitLibrary class >> preferencesOn: aBuilder [
	<systemsettings>
	(aBuilder group: #Winit)
		label: 'Winit';
		description: 'Winit settings';
		parent: self preferencesGroup;
		with: [
			(aBuilder range: #mouseWheelScrollSpeed)
				parent: #Winit;
				order: 1;
				label: 'Scroll wheel speed';
				description: 'Specify mouse wheel scroll speed factor for Winit windows';
				target: self;
				range: (0.3 to: 20 by: 0.1) ]
]

{ #category : #'private - ffi' }
WinitLibrary class >> primPrint: aString [
	^ self ffiCall: #(void winit_print (GtBoxerString aString))
]

{ #category : #'private - ffi' }
WinitLibrary class >> primPrintln: aString [
	^ self ffiCall: #(void winit_println (GtBoxerString aString))
]

{ #category : #printing }
WinitLibrary class >> print: aString [
	| aBoxerString |
	
	aBoxerString := GtBoxerString fromString: aString.
	[ self primPrint: aBoxerString ]
		ensure: [ aBoxerString release ]
]

{ #category : #printing }
WinitLibrary class >> println: aString [
	| aBoxerString |
	
	aBoxerString := GtBoxerString fromString: aString.
	[ self primPrintln: aBoxerString ]
		ensure: [ aBoxerString release ]
]

{ #category : #'private - ffi' }
WinitLibrary >> calloutAPIClass [
	^ self subclassResponsibility
]

{ #category : #'accessing platform' }
WinitLibrary >> detectLibrary: aFileName [
	^ ({ Smalltalk imageDirectory . Smalltalk vmDirectory . FileSystem workingDirectory }
		collect: [ :aPath | aPath asFileReference / aFileName ])
			detect: #exists
			ifFound: #fullName
			ifNone: [ aFileName ]
]

{ #category : #'accessing platform' }
WinitLibrary >> macModuleName [
	^ self detectLibrary: 'libWinit.dylib'
]

{ #category : #accessing }
WinitLibrary >> runner [
	^ self subclassResponsibility
]

{ #category : #'accessing platform' }
WinitLibrary >> unixModuleName [
	^ self detectLibrary: 'libWinit.so'
]

{ #category : #'accessing platform' }
WinitLibrary >> win32ModuleName [
	^ self detectLibrary: 'libWinit.dll'
]
