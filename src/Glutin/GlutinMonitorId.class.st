Class {
	#name : #GlutinMonitorId,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'eventsLoop'
	],
	#category : #Glutin
}

{ #category : #'private - ffi' }
GlutinMonitorId class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_primary_monitor_free(void* aHandle))
]

{ #category : #accessing }
GlutinMonitorId >> eventsLoop [
	^ eventsLoop
]

{ #category : #accessing }
GlutinMonitorId >> eventsLoop: anObject [
	eventsLoop := anObject
]

{ #category : #accessing }
GlutinMonitorId >> hdpi [
	<return: #Number>
	^ self primGetHdpiFactor
]

{ #category : #'private - ffi' }
GlutinMonitorId >> primGetHdpiFactor [
	^ self ffiCall: #(float64 glutin_primary_monitor_get_hidpi_factor (GlutinMonitorId self))
]
