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
