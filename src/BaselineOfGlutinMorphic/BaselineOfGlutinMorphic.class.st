Class {
	#name : #BaselineOfGlutinMorphic,
	#superclass : #BaselineOf,
	#category : #BaselineOfGlutinMorphic
}

{ #category : #baselines }
BaselineOfGlutinMorphic >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'Glutin' with: [ spec repository: 'github://feenkcom/gtoolkit-glutin/src' ];
			baseline: 'GlutinOpenGL' with: [ spec repository: 'github://feenkcom/gtoolkit-glutin/src' ];
			baseline: 'GToolkitFenster' with: [ spec repository: 'github://feenkcom/gtoolkit-fenster/src' ].
		spec
			package: 'Glutin-Morphic' with: [ spec requires: #(#Glutin #GlutinOpenGL #GToolkitFenster) ] ]
]
