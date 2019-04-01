Class {
	#name : #GlutinWindowedContextExamples,
	#superclass : #Object,
	#category : #'Glutin-Examples'
}

{ #category : #examples }
GlutinWindowedContextExamples >> getProcAddress [
	<gtExample>
	| aWindowedContext anAddress |
	
	aWindowedContext := self windowedContext.
	anAddress := aWindowedContext getProcAddress: 'glActiveTexture'.
	
	^ anAddress
]

{ #category : #examples }
GlutinWindowedContextExamples >> liveWindow [
	<gtExample>
	| aWindowedContext aProcess |
	
	aWindowedContext := self windowedContext.
	aProcess := [ [
		aWindowedContext makeCurrent.
		aWindowedContext pollEvents: [ :anEvent |
			anEvent mapped class = WinitBaseWindowCloseRequested
				ifTrue: [
					aWindowedContext release.
					aProcess terminate.
				].
		].
		aWindowedContext swapBuffers.
		16 milliSeconds wait.
	] repeat ] fork. 
	
	^ aWindowedContext
]

{ #category : #'instance creation' }
GlutinWindowedContextExamples >> windowedContext [
	<gtExample>
	| anEventsLoop aWindowBuilder aContextBuilder aWindowedContext |
	
	anEventsLoop := GlutinEventsLoop new.
	
	aWindowBuilder := GlutinWindowBuilder new.
	aWindowBuilder
		title: 'Native Window';
		withDecorations: true;
		withResizable: true;
		withTransparency: true.

	aContextBuilder := GlutinContextBuilder new.

	aWindowedContext := GlutinWindowedContext
		create: anEventsLoop
		windowBuilder: aWindowBuilder
		contextBuilder: aContextBuilder.

	^ aWindowedContext
]
