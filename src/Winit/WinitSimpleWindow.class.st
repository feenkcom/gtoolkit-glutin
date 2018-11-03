"
| window |
window := WinitSimpleWindow create.
window title: 'Simple Window'.

[ 2 seconds wait. window destroy ] fork
"
Class {
	#name : #WinitSimpleWindow,
	#superclass : #WinitWindow,
	#category : #Winit
}

{ #category : #'instance creation' }
WinitSimpleWindow class >> create [
	"Create a window for a new events loop"
	^ self createFor: WinitEventsLoop create
]

{ #category : #'instance creation' }
WinitSimpleWindow class >> createFor: anEventsLoop [
	"Create a window for a given events loop"
	| aWindow |
	
	aWindow := self primCreate: anEventsLoop.
	aWindow autoRelease.
	
	aWindow initializeWith: anEventsLoop.
	^ aWindow
]

{ #category : #'private - ffi' }
WinitSimpleWindow class >> primCreate: anEventsLoop [
	^ self ffiCall: #(WinitSimpleWindow winit_create_window(WinitEventsLoop anEventsLoop))
]

{ #category : #'private - ffi' }
WinitSimpleWindow class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void winit_destroy_window(void* aHandle))
]

{ #category : #'private - ffi' }
WinitSimpleWindow >> primSetTitle: aString [
	^ self ffiCall: #(void winit_window_set_title(WinitSimpleWindow self, String aString))
]
