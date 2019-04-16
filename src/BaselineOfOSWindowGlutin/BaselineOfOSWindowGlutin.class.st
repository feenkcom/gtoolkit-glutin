Class {
	#name : #BaselineOfOSWindowGlutin,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSWindowGlutin
}

{ #category : #baseline }
BaselineOfOSWindowGlutin >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'Glutin' with: [
				spec repository: 'github://feenkcom/oswindow-glutin:v0.4.4/src' ].
		spec package: 'OSWindow-Glutin' with: [
				spec requires: #(#Glutin ). ]. ].

]
