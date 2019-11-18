Class {
	#name : #GlutinContextBuilderExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
GlutinContextBuilderExamples >> contextBuilder [
	<gtExample>
	| aContextBuilder |
	
	aContextBuilder := GlutinContextBuilder new.
	
	^ aContextBuilder
]
