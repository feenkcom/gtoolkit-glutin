Class {
	#name : #GlutinMonitorId,
	#superclass : #GlutinExternalObject,
	#instVars : [
		'eventsLoop'
	],
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
GlutinMonitorId class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_primary_monitor_free(void** aHandle))
]

{ #category : #accessing }
GlutinMonitorId >> eventLoop [
	^ eventsLoop
]

{ #category : #accessing }
GlutinMonitorId >> eventLoop: anObject [
	eventsLoop := anObject
]

{ #category : #accessing }
GlutinMonitorId >> hdpi [
	<return: #Number>
	^ self primGetScaleFactor
]

{ #category : #'private - ffi' }
GlutinMonitorId >> primGetScaleFactor [
	^ self ffiCall: #(float64 glutin_primary_monitor_get_hidpi_factor (GlutinMonitorId self))
]
