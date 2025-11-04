Class {
	#name : #BaselineOfGlutin,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfGlutin
}

{ #category : #baseline }
BaselineOfGlutin >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #'postLoadGlutin:'.
		spec
			baseline: 'GToolkitBoxer' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.57/boxer-bindings' ].
		spec
			baseline: 'Fenster' with: [
				spec repository: 'github://feenkcom/fenster:v0.8.25/src' ].

		spec package: 'Glutin' with: [
			spec requires: #(#GToolkitBoxer #Fenster) ].
		spec package: 'Winit' with: [
			spec requires: #(#Glutin) ].
	]
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadGlutin: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInitializeEventsMap: spec
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInitializeEventsMap: aSpec [
	RustWindowingBaseEvent initializeEventTypeMap
]
