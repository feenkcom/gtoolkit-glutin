Class {
	#name : #GlutinContextBuilderExamples,
	#superclass : #Object,
	#category : #'Winit-Examples'
}

{ #category : #'instance creation' }
GlutinContextBuilderExamples >> contextBuilder [
	<gtExample>
	| aContextBuilder |
	
	aContextBuilder := GlutinContextBuilder new.
	
	^ aContextBuilder
]
