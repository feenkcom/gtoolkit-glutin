Class {
	#name : #RustWindowBuilderExamples,
	#superclass : #Object,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
RustWindowBuilderExamples >> glutinWindowBuilder [
	<gtExample>
	<return: #GlutinWindowBuilder>
	| aWindowBuilder |
	aWindowBuilder := GlutinWindowBuilder new.

	self assert: aWindowBuilder title equals: 'Window'.
	self assert: aWindowBuilder withDecorations.
	self assert: aWindowBuilder withTransparency not.
	self assert: aWindowBuilder withResizable.

	^ aWindowBuilder
]

{ #category : #'instance creation' }
RustWindowBuilderExamples >> winitWindowBuilder [
	<gtExample>
	<return: #WinitWindowBuilder>
	| aWindowBuilder |
	aWindowBuilder := WinitWindowBuilder new.

	self assert: aWindowBuilder title equals: 'Window'.
	self assert: aWindowBuilder withDecorations.
	self assert: aWindowBuilder withTransparency not.
	self assert: aWindowBuilder withResizable.

	^ aWindowBuilder
]
