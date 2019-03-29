Class {
	#name : #GlutinEventsLoopExamples,
	#superclass : #Object,
	#category : #'Winit-Examples'
}

{ #category : #'instance creation' }
GlutinEventsLoopExamples >> eventsLoop [
	<gtExample>
	| anEventsLoop |
	
	anEventsLoop := GlutinEventsLoop new.
	
	^ anEventsLoop
]
