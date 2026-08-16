Class {
	#name : #GlutinMouseScrollDelta,
	#superclass : #Object,
	#instVars : [
		'type',
		'x',
		'y'
	],
	#category : #'Winit-Structures'
}

{ #category : #accessing }
GlutinMouseScrollDelta >> gtDisplayOn: aStream [
	aStream
		nextPutAll: self x asString;
		nextPut: $,;
		nextPutAll: self y asString
]

{ #category : #accessing }
GlutinMouseScrollDelta >> gtOverviewFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Overview';
		priority: 1;
		items: [ { 'x' -> self x . 'y' -> self y . 'Type' -> self type} ];
		column: 'Property' text: #key;
		column: 'Value' text: #value
]

{ #category : #accessing }
GlutinMouseScrollDelta >> type [
	^ type
]

{ #category : #accessing }
GlutinMouseScrollDelta >> type: anObject [
	type := anObject
]

{ #category : #accessing }
GlutinMouseScrollDelta >> x [
	^ x
]

{ #category : #accessing }
GlutinMouseScrollDelta >> x: anObject [
	x := anObject
]

{ #category : #accessing }
GlutinMouseScrollDelta >> y [
	^ y
]

{ #category : #accessing }
GlutinMouseScrollDelta >> y: anObject [
	y := anObject
]
