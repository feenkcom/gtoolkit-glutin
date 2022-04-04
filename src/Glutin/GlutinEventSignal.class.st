Class {
	#name : #GlutinEventSignal,
	#superclass : #BeaconSignal,
	#instVars : [
		'event'
	],
	#category : #'Glutin-Event fetcher'
}

{ #category : #'instance creation' }
GlutinEventSignal class >> event: aGlutinEvent [
	^ self new event: aGlutinEvent
]

{ #category : #testing }
GlutinEventSignal class >> gtNormalOperationSignal [
	"Answer a Boolean indicating whether this signal is generated as part of normal operations.
	See {{gtMethod:BeaconSignal class>>gtNormalOperationSignal}} for a description"

	^ true.
]

{ #category : #accessing }
GlutinEventSignal >> event [
	^ event
]

{ #category : #accessing }
GlutinEventSignal >> event: anObject [
	event := anObject
]

{ #category : #copying }
GlutinEventSignal >> postCopy [
	event := event copy
]

{ #category : #accessing }
GlutinEventSignal >> printOneLineContentsOn: aStream [
	event printOn: aStream
]
