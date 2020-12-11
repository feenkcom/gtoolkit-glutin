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

{ #category : #baselines }
BaselineOfGlutinBindings >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'GToolkitBoxerBindings' with: [ spec repository: 'github://feenkcom/gtoolkit-boxer/src' ];
			baseline: 'GToolkitFenster' with: [ spec repository: 'github://feenkcom/gtoolkit-fenster/src' ].

		spec
			postLoadDoIt: #'postLoadGlutin:';
			package: 'Glutin' with: [ spec requires: #(GToolkitBoxerBindings GToolkitFenster) ] ]
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
