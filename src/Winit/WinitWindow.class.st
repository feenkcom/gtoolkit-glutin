Class {
	#name : #WinitWindow,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#instVars : [
		'eventsLoop',
		'title'
	],
	#category : #Winit
}

{ #category : #'library path' }
WinitWindow class >> ffiLibraryName [
	^ GlutinLibrary
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

	"self title: 'Window'"
]

{ #category : #testing }
WinitWindow >> isValid [
	^ handle isNotNil and: [ handle isNull not ]
]

{ #category : #'private - ffi' }
WinitWindow >> primSetTitle: aString [
	self subclassResponsibility
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
