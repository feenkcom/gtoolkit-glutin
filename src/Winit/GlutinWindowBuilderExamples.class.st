Class {
	#name : #GlutinWindowBuilderExamples,
	#superclass : #Object,
	#category : #'Winit-Examples'
}

{ #category : #'as yet unclassified' }
GlutinWindowBuilderExamples >> windowBuilder [
	<gtExample>
	| aWindowBuilder |
	
	aWindowBuilder := GlutinWindowBuilder new.
	
	^ aWindowBuilder
]
