Class {
	#name : #BaselineOfGlutin,
	#superclass : #BaselineOf,
	#category : #BaselineOfGlutin
}

{ #category : #baseline }
BaselineOfGlutin >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'GToolkitBoxer' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.24/boxer-bindings' ].
		spec
			baseline: 'GlutinBindings' with: [
				spec repository: 'github://feenkcom/gtoolkit-glutin:v0.8.70/src' ].
	]
]
