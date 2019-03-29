Class {
	#name : #GlutinWindowedContextExamples,
	#superclass : #Object,
	#pools : [
		'GlutinOpenGLConstants'
	],
	#category : #'Winit-Examples'
}

{ #category : #'examples - gl' }
GlutinWindowedContextExamples >> clearScreenBlue [
	<gtExample>
	| aWindowedContext |
	
	aWindowedContext := self windowedContext.
	aWindowedContext makeCurrent.
	
	aWindowedContext gl
		clearColor_red: 0.0 green: 0.0 blue: 1.0 alpha: 1.0;
		clear: GL_COLOR_BUFFER_BIT.
		
	aWindowedContext swapBuffers.
			
	^ aWindowedContext
]

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
		withTransparency: false.

	aContextBuilder := GlutinContextBuilder new.

	aWindowedContext := GlutinWindowedContext
		create: anEventsLoop
		windowBuilder: aWindowBuilder
		contextBuilder: aContextBuilder.

	^ aWindowedContext
]
