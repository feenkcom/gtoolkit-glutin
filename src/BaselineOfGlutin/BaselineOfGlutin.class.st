Class {
	#name : #BaselineOfGlutin,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfGlutin
}

{ #category : #baselines }
BaselineOfGlutin >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'GToolkitInstaller' with: [ spec repository: 'github://feenkcom/gtoolkit-installer/src' ].
		spec
			postLoadDoIt: #'postLoadGlutin:';
			package: 'Glutin' with: [ spec requires: #(GToolkitInstaller) ];
			package: 'Glutin-OpenGL' with: [ spec requires: #('Glutin') ] ]
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadGlutin: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInitializeEventsMap: spec.
	self postLoadInstallGlutinBinary: spec.
	self postLoadHackAlien: spec
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadHackAlien: aSpec [
	"nested callbacks don't work. hack around to make glutin callbacks work for now"
	
	Author
		useAuthor: 'GlamorousAuthor'
		during: [ Alien class compile: ((Alien class >> #gtInvokeCallbackContext:) sourceCode
			copyReplaceAll: 'gtInvokeCallbackContext:'
			with: 'invokeCallbackContext:') ]
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInitializeEventsMap: aSpec [
	GlutinBaseEvent initializeEventTypeMap
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInstallGlutinBinary: aSpec [
	(self class environment at: #GlutinLibrary) install
]
