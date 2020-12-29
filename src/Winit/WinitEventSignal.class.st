Class {
	#name : #WinitEventSignal,
	#superclass : #BeaconSignal,
	#instVars : [
		'event'
	],
	#category : #'Winit-Event Loop'
}

{ #category : #'instance creation' }
WinitEventSignal class >> event: aGlutinEvent [
	^ self new event: aGlutinEvent
]

{ #category : #accessing }
WinitEventSignal >> event [
	^ event
]

{ #category : #accessing }
WinitEventSignal >> event: anObject [
	event := anObject
]

{ #category : #copying }
WinitEventSignal >> postCopy [
	event := event copy
]
