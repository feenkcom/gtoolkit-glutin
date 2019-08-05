Class {
	#name : #GlutinWindowedContextExamples,
	#superclass : #Object,
	#traits : 'TGlutinLibrary',
	#classTraits : 'TGlutinLibrary classTrait',
	#category : #'Glutin-Examples'
}

{ #category : #'library path' }
GlutinWindowedContextExamples class >> ffiLibraryName [
	^ GlutinLibrary
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
GlutinWindowedContextExamples >> liveWindowRunForever [
	<gtExample>
	| aWindowedContext |

	aWindowedContext := self windowedContext.	
	aWindowedContext eventsLoop run: [ :anEvent :anEventLoop |
		| aControlFlow |
		
		aControlFlow := GlutinControlFlow poll.
		
		anEvent mapped class = GlutinWindowResizedEvent
			ifTrue: [ NonInteractiveTranscript stdout show: #GlutinWindowResizedEvent; cr ].
		
		anEvent mapped class = GlutinWindowRedrawRequestedEvent
			ifTrue: [ NonInteractiveTranscript stdout show: #GlutinWindowRedrawRequestedEvent; cr ].
			
		anEvent mapped class = GlutinReceivedCharacterEvent
			ifTrue: [
				anEventLoop createWindow: (GlutinWindowBuilder new title: 'Window #1').
				anEventLoop closeWindow: aWindowedContext.
			].
		
		anEvent mapped class = GlutinWindowCloseRequested
			ifTrue: [ aControlFlow := GlutinControlFlow exit ].
		
		aControlFlow ]
]

{ #category : #examples }
GlutinWindowedContextExamples >> liveWindowTest [
	self primTest
]

{ #category : #examples }
GlutinWindowedContextExamples >> primTest [
	^ self ffiCall: #(void glutin_create_windowed_context_test())
]

{ #category : #'instance creation' }
GlutinWindowedContextExamples >> windowedContext [
	<gtExample>
	| anEventsLoop aWindowBuilder aContextBuilder aWindowedContext |
	
	anEventsLoop := GlutinEventLoop new.
	
	aWindowBuilder := GlutinWindowBuilder new.
	aWindowBuilder title: 'Native Window'.
	
	aContextBuilder := GlutinContextBuilder new.

	aWindowedContext := anEventsLoop createWindow: aWindowBuilder context: aContextBuilder.

	^ aWindowedContext
]
