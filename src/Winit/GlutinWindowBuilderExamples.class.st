Class {
	#name : #GlutinWindowBuilderExamples,
	#superclass : #Object,
	#category : #'Winit-Examples'
}

{ #category : #'instance creation' }
GlutinWindowBuilderExamples >> windowBuilder [
	<gtExample>
	| aWindowBuilder |
	
	aWindowBuilder := GlutinWindowBuilder new.
	
	self assert: aWindowBuilder title equals: 'Window'.
	self assert: aWindowBuilder withDecorations.
	self assert: aWindowBuilder withTransparency not.
	self assert: aWindowBuilder withResizable.
	
	^ aWindowBuilder
]
