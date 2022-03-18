Class {
	#name : #GlutinEventsLoopExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
GlutinEventsLoopExamples >> eventLoop [
	<gtExample>
	<noTest>
	| anEventsLoop |
	
	anEventsLoop := GlutinCallbackEventLoop new.
	
	^ anEventsLoop
]

{ #category : #'instance creation' }
GlutinEventsLoopExamples >> hdpi [
	<gtExample>
	<noTest>
	| aMonitor |
	
	aMonitor := self primaryMonitor.
	
	^ aMonitor hdpi
]

{ #category : #'instance creation' }
GlutinEventsLoopExamples >> primaryMonitor [
	<gtExample>
	<noTest>
	| aMonitor |
	
	aMonitor := self eventLoop primaryMonitor.
	
	^ aMonitor
]
