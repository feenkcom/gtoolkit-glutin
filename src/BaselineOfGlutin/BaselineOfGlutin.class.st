Class {
	#name : #BaselineOfGlutin,
	#superclass : #BaselineOf,
	#category : #BaselineOfGlutin
}

{ #category : #baselines }
BaselineOfGlutin >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec 
			package: 'Glutin';
			package: 'Glutin-OpenGL' with: [ spec requires: #('Glutin') ] ]
]
