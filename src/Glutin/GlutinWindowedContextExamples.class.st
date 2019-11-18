Class {
	#name : #GlutinWindowedContextExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #'library path' }
GlutinWindowedContextExamples class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #examples }
GlutinWindowedContextExamples >> liveWindowRunForever [
	<gtExample>
	| theWindows |

	theWindows := self windowedContexts: 3.
	theWindows anyOne eventsLoop run: [ :anEvent :anEventLoop |
		| aControlFlow |
		
		aControlFlow := GlutinControlFlow poll.
		
		anEvent mapped class = GlutinWindowResizedEvent
			ifTrue: [ NonInteractiveTranscript stdout show: #GlutinWindowResizedEvent; cr ].
		
		anEvent mapped class = GlutinWindowRedrawRequestedEvent
			ifTrue: [ NonInteractiveTranscript stdout show: #GlutinWindowRedrawRequestedEvent; cr ].
			
		anEvent mapped class = GlutinReceivedCharacterEvent
			ifTrue: [
				anEventLoop createWindow: (GlutinWindowBuilder new title: ('Window #', theWindows size asString)).
				(theWindows remove: theWindows anyOne) close.
			].
		
		anEvent mapped class = GlutinWindowCloseRequested
			ifTrue: [
				| aWindow |
				aWindow := theWindows removeKey: anEvent mapped windowId.
				aWindow close ].
			
		theWindows ifEmpty: [ aControlFlow := GlutinControlFlow exit ].
		
		aControlFlow ]
]

{ #category : #examples }
GlutinWindowedContextExamples >> liveWindowTest [
	self primTest
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

{ #category : #'instance creation' }
GlutinWindowedContextExamples >> windowedContexts: aNumber [
	<gtExample>
	| anEventsLoop aWindowBuilder |
	
	anEventsLoop := GlutinEventLoop new.
	aWindowBuilder := GlutinWindowBuilder new.
	
	^ ((1 to: aNumber) collect: [ :i |
		| aWindow |
		aWindowBuilder title: 'Window #', i asString.
		aWindow := anEventsLoop createWindow: aWindowBuilder.
		aWindow id -> aWindow ]) asDictionary
]
