Class {
	#name : #GlutinEventsLoopExamples,
	#superclass : #Object,
	#category : #'Glutin-Examples'
}

{ #category : #'instance creation' }
GlutinEventsLoopExamples >> eventsLoop [
	<gtExample>
	| anEventsLoop |
	
	anEventsLoop := GlutinEventsLoop new.
	
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
	
	aMonitor := self eventsLoop primaryMonitor.
	
	^ aMonitor
]
