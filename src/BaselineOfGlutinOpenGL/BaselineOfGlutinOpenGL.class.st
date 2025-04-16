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
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.131/src' ].
		spec
			baseline: 'GToolkitBoxer' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.54/boxer-bindings' ].
		spec
			baseline: 'GToolkitGleam' with: [
				spec repository: 'github://feenkcom/gtoolkit-gleam:v0.8.64' ].

		spec package: 'Glutin-OpenGL' with: [
			spec requires: #(#Glutin #GToolkitGleam #GToolkitBoxer) ].
	]
]
