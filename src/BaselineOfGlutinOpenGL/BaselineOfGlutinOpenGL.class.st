Class {
	#name : #BaselineOfGlutinOpenGL,
	#superclass : #BaselineOf,
	#category : #BaselineOfGlutinOpenGL
}

{ #category : #baselines }
BaselineOfGlutinOpenGL >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'Glutin' with: [ spec repository: 'github://feenkcom/gtoolkit-glutin/src' ];
			baseline: 'GToolkitBoxer' with: [ spec repository: 'github://feenkcom/gtoolkit-boxer/boxer-bindings' ];
			baseline: 'GToolkitGleam' with: [ spec repository: 'github://feenkcom/gtoolkit-gleam/src' ].
		spec
			package: 'Glutin-OpenGL' with: [ spec requires: #('Glutin' 'GToolkitGleam' GToolkitBoxer) ] ]
]
