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
				spec repository: 'github://feenkcom/gtoolkit-boxer:main/boxer-bindings' ];
			baseline: 'Fenster' with: [
				spec repository: 'github://feenkcom/fenster:main/src' ];
			baseline: 'BeaconCore' with: [
				spec repository: 'github://feenkcom/pharo-beacon/repository' ].
		spec package: 'Winit' with: [
				spec requires: #('GToolkitBoxer' 'Fenster' 'BeaconCore'). ]. ].
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
