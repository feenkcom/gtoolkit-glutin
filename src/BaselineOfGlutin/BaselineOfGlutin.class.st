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
				spec repository: 'github://feenkcom/gtoolkit-installer:v0.8.1/src' ];
			baseline: 'GToolkitBoxer' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.5/src' ];
			baseline: 'GToolkitGleam' with: [
				spec repository: 'github://feenkcom/gtoolkit-gleam:v0.8.5/src' ];
			baseline: 'GToolkitFenster' with: [
				spec repository: 'github://feenkcom/gtoolkit-fenster:v0.8.11/src' ];
			baseline: 'GtThreadedFFIDev' with: [
				spec repository: 'github://feenkcom/tffi-dev:v0.8.1/src' ].
		spec 
			package: 'Glutin' with: [
				spec requires: #('GToolkitInstaller' 'GToolkitBoxer' 'GtThreadedFFIDev' 'GToolkitFenster' ). ];
			package: 'Glutin-OpenGL' with: [
				spec requires: #('Glutin' 'GToolkitGleam' ). ];
			package: 'Glutin-Morphic' with: [
				spec requires: #('Glutin' 'Glutin-OpenGL' ). ]. ].

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
