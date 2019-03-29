Class {
	#name : #GlutinWindowedContextExamples,
	#superclass : #Object,
	#category : #'Winit-Examples'
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
	aProcess := [
		
		aWindowedContext makeCurrent.
		
		aWindowedContext pollEvents: [ :anEvent |
			anEvent mapped logCr
		].
		
		aWindowedContext swapBuffers.
		
		16 milliSeconds wait.
	] fork. 
	
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
