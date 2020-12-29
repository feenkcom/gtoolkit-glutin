Class {
	#name : #WinitMonitorId,
	#superclass : #WinitExternalObject,
	#instVars : [
		'eventLoop'
	],
	#category : #'Winit-External'
}

{ #category : #'private - ffi' }
WinitMonitorId class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_primary_monitor_drop(void** aHandle))
]

{ #category : #accessing }
WinitMonitorId >> eventLoop [
	^ eventLoop
]

{ #category : #accessing }
WinitMonitorId >> eventLoop: anObject [
	eventLoop := anObject
]

{ #category : #accessing }
WinitMonitorId >> hdpi [
	<return: #Number>
	^ self primGetScaleFactor
]

{ #category : #'private - ffi' }
WinitMonitorId >> primGetScaleFactor [
	^ self ffiCall: #(float64 winit_primary_monitor_get_hidpi_factor (self))
]
