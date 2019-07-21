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
	aProcess := [
		| isRunning |
		isRunning := true.
		[
		aWindowedContext makeCurrent.
		aWindowedContext eventsLoop fetchEvents: [ :anEvent |
			anEvent mapped class = GlutinWindowCloseRequested
				ifTrue: [
					aWindowedContext release.
					isRunning := false.
					aProcess terminate ]. ].
		
		aWindowedContext swapBuffers.
		
		16 milliSeconds wait.
		isRunning
	] whileTrue ] fork. 
	
	^ aWindowedContext
]

{ #category : #examples }
GlutinWindowedContextExamples >> liveWindowRunForever [
	<gtExample>
	| aWindowedContext |

	aWindowedContext := self windowedContext.
	aWindowedContext eventsLoop run: [ :anEvent |
		| aControlFlow |
		
		aControlFlow := GlutinControlFlow Poll.
		
		anEvent mapped class = GlutinWindowResizedEvent
			ifTrue: [ NonInteractiveTranscript stdout show: #GlutinWindowResizedEvent; cr ].
		
		anEvent mapped class = GlutinWindowRedrawRequestedEvent
			ifTrue: [ NonInteractiveTranscript stdout show: #GlutinWindowRedrawRequestedEvent; cr ].
		
		anEvent mapped class = GlutinWindowCloseRequested
			ifTrue: [ aControlFlow := GlutinControlFlow Exit ].
			
		Processor yield.
		ProcessorScheduler relinquishProcessorForMicroseconds: 1.
		
		aControlFlow ]
]

{ #category : #'instance creation' }
GlutinWindowedContextExamples >> windowedContext [
	<gtExample>
	| anEventsLoop aWindowBuilder aWindowedContext |
	
	anEventsLoop := GlutinEventsLoop new.
	
	aWindowBuilder := GlutinWindowBuilder new.
	aWindowBuilder title: 'Native Window'.

	aWindowedContext := GlutinWindowedContext
		create: anEventsLoop
		windowBuilder: aWindowBuilder.

	^ aWindowedContext
]
