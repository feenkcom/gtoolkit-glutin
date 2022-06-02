"
Just bindings, without external library nor any extra features


"
Class {
	#name : #BaselineOfGlutinBindings,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfGlutinBindings
}

{ #category : #baseline }
BaselineOfGlutinBindings >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #'postLoadGlutin:'.
		spec
			baseline: 'GToolkitBoxerBindings' with: [
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.31/boxer-bindings' ].
		spec
			baseline: 'Fenster' with: [
				spec repository: 'github://feenkcom/fenster:v0.8.22/src' ].

		spec package: 'Glutin' with: [
			spec requires: #('GToolkitBoxerBindings' 'Fenster') ].
	]
]

{ #category : #baselines }
BaselineOfGlutinBindings >> postLoadGlutin: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInitializeEventsMap: spec
]

{ #category : #baselines }
BaselineOfGlutinBindings >> postLoadInitializeEventsMap: aSpec [
	RustWindowingBaseEvent initializeEventTypeMap
]
