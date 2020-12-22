Class {
	#name : #BaselineOfGlutinMorphic,
	#superclass : #BaselineOf,
	#category : #BaselineOfGlutinMorphic
}

{ #category : #baseline }
BaselineOfGlutinMorphic >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Glutin' with: [
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.34/src' ];
			baseline: 'GlutinOpenGL' with: [
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.34/src' ];
			baseline: 'GToolkitFenster' with: [
				spec repository: 'github://feenkcom/gtoolkit-fenster:v0.8.16/src' ].
		spec package: 'Glutin-Morphic' with: [
				spec requires: #('Glutin' 'GlutinOpenGL' 'GToolkitFenster' ). ]. ].

]
