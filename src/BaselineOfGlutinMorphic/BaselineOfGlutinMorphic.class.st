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
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.45/src' ];
			baseline: 'GlutinOpenGL' with: [
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.45/src' ];
			baseline: 'Fenster' with: [
				spec repository: 'github://feenkcom/fenster:v0.8.20/src' ].
		spec package: 'Glutin-Morphic' with: [
				spec requires: #('Glutin' 'GlutinOpenGL' 'Fenster' ). ]. ].

]
