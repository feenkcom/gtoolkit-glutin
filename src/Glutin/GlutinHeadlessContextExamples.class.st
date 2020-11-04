Class {
	#name : #GlutinHeadlessContextExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
GlutinHeadlessContextExamples >> fromWorkingProfile [
	<gtExample>
	<noTest>
	| aHeadlessContext |
	
	aHeadlessContext := GlutinEventLoop new createHeadless.
	self assert: aHeadlessContext isCurrent not.
	
	^ aHeadlessContext
]

{ #category : #'instance creation' }
GlutinHeadlessContextExamples >> makeCurrent [
	<gtExample>
	<noTest>
	| aHeadlessContext |
	
	aHeadlessContext := self fromWorkingProfile.
	aHeadlessContext makeCurrent.
	
	self assert: aHeadlessContext isCurrent.
	
	^ aHeadlessContext
]
