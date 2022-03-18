Class {
	#name : #BaselineOfGlutin,
	#superclass : #BaselineOf,
	#category : #BaselineOfGlutin
}

{ #category : #baseline }
BaselineOfGlutin >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #'postLoadGlutin:'.
		spec
			baseline: 'GToolkitInstaller' with: [
				spec repository: 'github://feenkcom/gtoolkit-installer:v0.8.12/src' ].
		spec
			baseline: 'GToolkitBoxer' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.22/boxer-bindings' ].
		spec
			baseline: 'GlutinBindings' with: [
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.67/src' ].
	]
]
