Class {
	#name : #GlutinContextBuilderExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
GlutinContextBuilderExamples >> contextBuilder [
	<gtExample>
	<return: #GlutinContextBuilder>
	| aContextBuilder |
	aContextBuilder := GlutinContextBuilder new.

	^ aContextBuilder
]
