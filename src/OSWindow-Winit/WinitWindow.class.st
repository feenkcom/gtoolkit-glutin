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
