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
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.160/src' ].
		spec
			baseline: 'Fenster' with: [
				spec repository: 'github://feenkcom/fenster:v0.8.25/src' ].

		spec package: 'Winit-Morphic' with: [
			spec requires: #(#Winit #Fenster) ].
	]
]
