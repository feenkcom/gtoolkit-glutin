Class {
	#name : #BaselineOfGlutin,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfGlutin
}

{ #category : #baseline }
BaselineOfGlutin >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #'postLoadGlutin:'.
		spec 
			baseline: 'GToolkitInstaller' with: [
				spec repository: 'github://feenkcom/gtoolkit-installer:v0.7.14/src' ];
			baseline: 'GToolkitBoxer' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.6.67/src' ];
			baseline: 'GToolkitGleam' with: [
				spec repository: 'github://feenkcom/gtoolkit-gleam:v0.6.37/src' ];
			baseline: 'GToolkitFenster' with: [
				spec repository: 'github://feenkcom/gtoolkit-fenster:v0.6.7/src' ];
			baseline: 'SpartaWrapper' with: [
				spec repository: 'github://feenkcom/Sparta:v0.7.127/src' ];
			baseline: 'SpartaSkia' with: [
				spec repository: 'github://feenkcom/Sparta:v0.7.127/src' ];
			baseline: 'GtThreadedFFIDev' with: [
				spec repository: 'github://feenkcom/tffi-dev:v0.6.15/src' ].
		spec 
			package: 'Glutin' with: [
				spec requires: #(#GToolkitInstaller #GToolkitBoxer #GtThreadedFFIDev #GToolkitFenster ). ];
			package: 'Glutin-OpenGL' with: [
				spec requires: #('Glutin' 'GToolkitGleam' ). ];
			package: 'Glutin-Morphic' with: [
				spec requires: #('Glutin' 'Glutin-OpenGL' ). ];
			package: 'Glutin-Morphic-Sparta' with: [
				spec requires: #('Glutin-Morphic' 'SpartaWrapper' 'SpartaSkia' ). ]. ].

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
