Class {
	#name : #GlutinWindowEventsSensor,
	#superclass : #GlutinEventsHandler,
	#category : #'Glutin-Events Fetcher'
}

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processDeviceEvent: aGlutinDeviceEvent [
	GlutinWindowsRegistry default windowsDo: [ :aGlutinWindow |
		self processDeviceEvent: aGlutinDeviceEvent forWindow: aGlutinWindow ]
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processDeviceEvent: aGlutinDeviceEvent forWindow: aGlutinWindow [
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processGlutinEvent: aGlutinMappedEvent [
	aGlutinMappedEvent isDeviceEvent
		ifTrue: [ ^ self processDeviceEvent: aGlutinMappedEvent ].

	aGlutinMappedEvent isWindowEvent
		ifTrue: [ ^ self processWindowEvent: aGlutinMappedEvent ]
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processWindowEvent: aGlutinMappedEvent [
	GlutinWindowsRegistry default
		detectId: aGlutinMappedEvent windowId
		ifFound: [ :aGlutinWindow | self processWindowEvent: aGlutinMappedEvent forWindow: aGlutinWindow ]
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processWindowEvent: aGlutinWindowEvent forWindow: aWindow [
	
]
