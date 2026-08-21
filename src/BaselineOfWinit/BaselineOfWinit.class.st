Class {
	#name : #BaselineOfWinit,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfWinit
}

{ #category : #baseline }
BaselineOfWinit >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #'postLoadWinit:'.
		spec
			baseline: 'GToolkitBoxer' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.61/boxer-bindings' ].
		spec
			baseline: 'Fenster' with: [
				spec repository: 'github://feenkcom/fenster:v0.8.25/src' ].
		spec
			baseline: 'BeaconCore' with: [
				spec repository: 'github://feenkcom/pharo-beacon:v0.5.124/src' ].

		spec package: 'Winit' with: [
			spec requires: #(#GToolkitBoxer #Fenster #BeaconCore) ].
	]
]

{ #category : #baselines }
BaselineOfWinit >> postLoadInitializeEventsMap: aSpec [
	RustWindowingBaseEvent initializeEventTypeMap
]

{ #category : #baselines }
BaselineOfWinit >> postLoadWinit: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInitializeEventsMap: spec
]
