Class {
	#name : #GlutinWindowEventsSensor,
	#superclass : #GlutinEventsHandler,
	#category : #'Glutin-Event fetcher'
}

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processCommonEvent: aGlutinCommonEvent [
	GlutinWindowsRegistry default windowsDo: [ :aGlutinWindow |
		aGlutinWindow isValid
			ifTrue: [ self processCommonEvent: aGlutinCommonEvent forWindow: aGlutinWindow ] ]
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processCommonEvent: aGlutinCommonEvent forWindow: aGlutinWindow [
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processDeviceEvent: aGlutinDeviceEvent [
	GlutinWindowsRegistry default windowsDo: [ :aGlutinWindow |
		aGlutinWindow isValid
			ifTrue: [ self processDeviceEvent: aGlutinDeviceEvent forWindow: aGlutinWindow ] ]
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processDeviceEvent: aGlutinDeviceEvent forWindow: aGlutinWindow [
]

{ #category : #'event - handling' }
GlutinWindowEventsSensor >> processGlutinEvent: aGlutinMappedEvent [
	aGlutinMappedEvent isDeviceEvent
		ifTrue: [ ^ self processDeviceEvent: aGlutinMappedEvent ].

	aGlutinMappedEvent isWindowEvent
		ifTrue: [ ^ self processWindowEvent: aGlutinMappedEvent ].
		
	aGlutinMappedEvent isCommonEvent
		ifTrue: [ ^ self processCommonEvent: aGlutinMappedEvent ]
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
