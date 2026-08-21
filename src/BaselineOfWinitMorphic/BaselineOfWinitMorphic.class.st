Class {
	#name : #BaselineOfWinitMorphic,
	#superclass : #BaselineOf,
	#category : #BaselineOfWinitMorphic
}

{ #category : #baseline }
BaselineOfWinitMorphic >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Winit' with: [
				spec repository: 'github://feenkcom/gtoolkit-glutin:main/src' ];
			baseline: 'Fenster' with: [
				spec repository: 'github://feenkcom/fenster:main/src' ].
		spec package: 'Winit-Morphic' with: [
				spec requires: #('Winit' 'Fenster' ). ]. ].
]
