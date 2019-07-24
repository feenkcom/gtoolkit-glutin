Class {
	#name : #GlutinCommonEventsSensor,
	#superclass : #GlutinEventsHandler,
	#category : #'Glutin-Events Fetcher'
}

{ #category : #initialization }
GlutinCommonEventsSensor >> initialize [
	super initialize.
	
	eventQueue := WaitfreeQueue new
]
