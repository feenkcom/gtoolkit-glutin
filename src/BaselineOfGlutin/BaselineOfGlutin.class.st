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
			baseline: 'GToolkitInstaller' with: [ spec repository: 'github://feenkcom/gtoolkit-installer/src' ];
			baseline: 'GToolkitBoxer' with: [ spec repository: 'github://feenkcom/gtoolkit-boxer/src' ];
			baseline: 'GToolkitGleam' with: [ spec repository: 'github://feenkcom/gtoolkit-gleam/src' ];
			baseline: 'GToolkitFenster' with: [ spec repository: 'github://feenkcom/gtoolkit-fenster/src' ];
			baseline: 'SpartaWrapper' with: [ spec repository: 'github://feenkcom/Sparta/src' ];
			baseline: 'GtThreadedFFIDev'
				with: [ spec repository: 'github://feenkcom/tffi-dev/src' ].
		spec
			postLoadDoIt: #'postLoadGlutin:';
			package: 'Glutin' with: [ spec requires: #(GToolkitInstaller GToolkitBoxer GtThreadedFFIDev GToolkitFenster) ];
			package: 'Glutin-OpenGL' with: [ spec requires: #('Glutin' 'GToolkitGleam') ];
			package: 'Glutin-Morphic' with: [ spec requires: #('Glutin' 'Glutin-OpenGL') ];
			package: 'Glutin-Morphic-Sparta' with: [ spec requires: #('Glutin-Morphic' 'SpartaWrapper') ] ]
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
