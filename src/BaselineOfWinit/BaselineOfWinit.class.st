Class {
	#name : #BaselineOfWinit,
	#superclass : #BaselineOf,
	#category : #BaselineOfWinit
}

{ #category : #baselines }
BaselineOfWinit >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec spec package: 'Winit' ]
]
