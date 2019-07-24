Class {
	#name : #GlutinWindowEventsSensor,
	#superclass : #GlutinEventsHandler,
	#category : #'Glutin-Events Fetcher'
}

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processGlutinEvent: aGlutinMappedEvent [

	aGlutinMappedEvent isWindowEvent
		ifFalse: [ ^ self ].

	GlutinWindowsRegistry default
		detectId: aGlutinMappedEvent windowId
		ifFound: [ :aGlutinWindow | self processGlutinEvent: aGlutinMappedEvent forWindow: aGlutinWindow ]
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processGlutinEvent: aGlutinWindowEvent forWindow: aWindow [
	
]
