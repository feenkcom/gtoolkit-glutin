Class {
	#name : #BaselineOfGlutinOpenGL,
	#superclass : #BaselineOf,
	#category : #BaselineOfGlutinOpenGL
}

{ #category : #baseline }
BaselineOfGlutinOpenGL >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'Glutin' with: [
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.75/src' ].
		spec
			baseline: 'GToolkitBoxer' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.27/boxer-bindings' ].
		spec
			baseline: 'GToolkitGleam' with: [
				spec repository: 'github://feenkcom/gtoolkit-gleam:v0.8.36/src' ].

		spec package: 'Glutin-OpenGL' with: [
			spec requires: #('Glutin' 'GToolkitGleam' 'GToolkitBoxer') ].
	]
]
