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
