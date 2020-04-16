Class {
	#name : #GlutinEventsLoopExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
GlutinEventsLoopExamples >> eventLoop [
	<gtExample>
	| anEventsLoop |
	
	anEventsLoop := GlutinEventLoop new.
	
	^ anEventsLoop
]

{ #category : #'instance creation' }
GlutinEventsLoopExamples >> hdpi [
	<gtExample>
	| aMonitor |
	
	aMonitor := self primaryMonitor.
	
	^ aMonitor hdpi
]

{ #category : #'instance creation' }
GlutinEventsLoopExamples >> primaryMonitor [
	<gtExample>
	| aMonitor |
	
	aMonitor := self eventLoop primaryMonitor.
	
	^ aMonitor
]
