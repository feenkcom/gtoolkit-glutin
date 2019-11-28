Class {
	#name : #GlutinHeadlessContextExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
GlutinHeadlessContextExamples >> fromWorkingProfile [
	<gtExample>
	| aHeadlessContext |
	
	aHeadlessContext := GlutinContextBuilder headless.
	self assert: aHeadlessContext isCurrent not.
	
	^ aHeadlessContext
]

{ #category : #'instance creation' }
GlutinHeadlessContextExamples >> makeCurrent [
	<gtExample>
	| aHeadlessContext |
	
	aHeadlessContext := self fromWorkingProfile.
	aHeadlessContext makeCurrent.
	
	self assert: aHeadlessContext isCurrent.
	
	^ aHeadlessContext
]
