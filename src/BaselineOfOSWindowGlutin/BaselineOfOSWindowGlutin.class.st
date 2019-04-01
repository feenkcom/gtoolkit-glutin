Class {
	#name : #BaselineOfOSWindowGlutin,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSWindowGlutin
}

{ #category : #baselines }
BaselineOfOSWindowGlutin >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec
		baseline: 'Glutin' with: [ spec repository: 'github://feenkcom/oswindow-glutin/src' ];
		package: 'OSWindow-Glutin' with: [ spec requires: #(Glutin) ] ]
]
