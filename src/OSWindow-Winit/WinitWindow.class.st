Class {
	#name : #WinitWindow,
	#superclass : #FFIExternalObject,
	#traits : 'TWinitLibrary + TWinitPtr',
	#classTraits : 'TWinitLibrary classTrait + TWinitPtr classTrait',
	#instVars : [
		'eventsLoop',
		'title'
	],
	#category : #'OSWindow-Winit'
}

{ #category : #'instance creation' }
WinitWindow class >> create [
	"Create a window for a new events loop"
	^ self create: WinitEventsLoop create
]

{ #category : #'instance creation' }
WinitWindow class >> create: anEventsLoop [
	"Create a window for a given events loop"
	| aWindow |
	
	aWindow := self primCreate: anEventsLoop.
	aWindow autoRelease.
	
	aWindow initializeWith: anEventsLoop.
	^ aWindow
]

{ #category : #'private - ffi' }
WinitWindow class >> primCreate: anEventsLoop [
	^ self ffiCall: #(WinitWindow winit_create_window(WinitEventsLoop anEventsLoop))
]

{ #category : #'private - ffi' }
WinitWindow class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_destroy_window(void* aHandle))
]

{ #category : #'initialize-release' }
WinitWindow >> destroy [
	self release
]

{ #category : #'private - accessing' }
WinitWindow >> eventsLoop [
	^ eventsLoop
]

{ #category : #initialization }
WinitWindow >> initializeWith: anEventsLoop [
	eventsLoop := anEventsLoop.

	title := ''
]

{ #category : #'private - ffi' }
WinitWindow >> primSetTitle: aString [
	^ self ffiCall: #(void winit_window_set_title(WinitWindow self, String aString))
]

{ #category : #accessing }
WinitWindow >> title [
	<return: #String>

	^ title
]

{ #category : #accessing }
WinitWindow >> title: aString [
	self primSetTitle: aString.
	title := aString
]
