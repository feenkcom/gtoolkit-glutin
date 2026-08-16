Class {
	#name : #GlutinEventMouseButton,
	#superclass : #Object,
	#instVars : [
		'button_type',
		'button_code'
	],
	#category : #'Winit-Structures'
}

{ #category : #accessing }
GlutinEventMouseButton >> button_code [
	^ button_code
]

{ #category : #accessing }
GlutinEventMouseButton >> button_code: anObject [
	button_code := anObject
]

{ #category : #accessing }
GlutinEventMouseButton >> button_type [
	^ button_type
]

{ #category : #accessing }
GlutinEventMouseButton >> button_type: anObject [
	button_type := anObject
]
