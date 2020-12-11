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
			baseline: 'GtThreadedFFIDev'with: [ spec repository: 'github://feenkcom/tffi-dev/src' ];
			
			"an actual package with glutin bindings"
			baseline: 'GlutinBindings' with: [ spec repository: 'github://feenkcom/gtoolkit-glutin/src' ].
		spec
			postLoadDoIt: #'postLoadGlutin:' ]
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadGlutin: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInstallGlutinBinary: spec
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInstallGlutinBinary: aSpec [
	(self class environment at: #GlutinLibrary) install
]
