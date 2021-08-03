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
				spec repository: 'github://feenkcom/gtoolkit-glutin:main/src' ];
			baseline: 'GlutinOpenGL' with: [
				spec repository: 'github://feenkcom/gtoolkit-glutin:main/src' ];
			baseline: 'Fenster' with: [
				spec repository: 'github://feenkcom/fenster:main/src' ].
		spec package: 'Glutin-Morphic' with: [
				spec requires: #('Glutin' 'GlutinOpenGL' 'Fenster' ). ]. ].

]
