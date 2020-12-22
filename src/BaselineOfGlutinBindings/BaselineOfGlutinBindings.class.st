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
				spec repository: 'github://feenkcom/gtoolkit-boxer:v0.8.8/src' ];
			baseline: 'GToolkitFenster' with: [
				spec repository: 'github://feenkcom/gtoolkit-fenster:v0.8.16/src' ].
		spec package: 'Glutin' with: [
				spec requires: #('GToolkitBoxerBindings' 'GToolkitFenster' ). ]. ].

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
	GlutinBaseEvent initializeEventTypeMap
]
