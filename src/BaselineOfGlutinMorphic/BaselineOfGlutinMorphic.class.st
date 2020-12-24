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
			baseline: 'Fenster' with: [ spec repository: 'github://feenkcom/fenster/src' ].
		spec
			package: 'Glutin-Morphic' with: [ spec requires: #(#Glutin #GlutinOpenGL #Fenster) ] ]
]
