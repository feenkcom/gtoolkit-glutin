Class {
	#name : #BaselineOfOSWindowWinit,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSWindowWinit
}

{ #category : #baselines }
BaselineOfOSWindowWinit >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec
		baseline: 'Winit' with: [ 
			spec repository: 'github://syrel/oswindow-winit/src' ];
		package: 'OSWindow-Winit' with: [ spec requires: #(Winit) ] ]
]
