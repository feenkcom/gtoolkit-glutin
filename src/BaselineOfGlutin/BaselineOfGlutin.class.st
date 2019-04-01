Class {
	#name : #BaselineOfGlutin,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfGlutin
}

{ #category : #baselines }
BaselineOfGlutin >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			postLoadDoIt: #'postLoadGlutin:';
			package: 'Glutin';
			package: 'Glutin-OpenGL' with: [ spec requires: #('Glutin') ] ]
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadGlutin: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInitializeEventsMap: spec
]

{ #category : #baselines }
BaselineOfGlutin >> postLoadInitializeEventsMap: spec [
	GlutinBaseEvent initializeEventTypeMap
]
