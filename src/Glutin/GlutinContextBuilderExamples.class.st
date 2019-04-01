Class {
	#name : #GlutinContextBuilderExamples,
	#superclass : #Object,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
GlutinContextBuilderExamples >> contextBuilder [
	<gtExample>
	| aContextBuilder |
	
	aContextBuilder := GlutinContextBuilder new.
	
	^ aContextBuilder
]
