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
			package: 'Glutin-OpenGL' with: [ spec requires: #('Glutin') ];
			package: 'Glutin-Morphic' with: [ spec requires: #('Glutin' 'Glutin-OpenGL') ] ]
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadGlutin: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInitializeEventsMap: spec.
	self postLoadInstallGlutinBinary: spec
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInitializeEventsMap: aSpec [
	GlutinBaseEvent initializeEventTypeMap
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInstallGlutinBinary: aSpec [
	(self class environment at: #GlutinLibrary) install
]
