Class {
	#name : #WinitWindowEventHandler,
	#superclass : #WinitEventHandler,
	#category : #'Winit-Event Loop'
}

{ #category : #'event - handling' }
WinitWindowEventHandler >> processCommonEvent: aWinitCommonEvent [
	WinitWindowsRegistry default windowsDo: [ :aWinitWindow |
		aWinitWindow isValid
			ifTrue: [ self processCommonEvent: aWinitCommonEvent forWindow: aWinitWindow ] ]
]

{ #category : #'event - handling' }
WinitWindowEventHandler >> processCommonEvent: aWinitCommonEvent forWindow: aWinitWindow [
]

{ #category : #'event - handling' }
WinitWindowEventHandler >> processDeviceEvent: aWinitDeviceEvent [
	WinitWindowsRegistry default windowsDo: [ :aWinitWindow |
		aWinitWindow isValid
			ifTrue: [ self processDeviceEvent: aWinitDeviceEvent forWindow: aWinitWindow ] ]
]

{ #category : #'event - handling' }
WinitWindowEventHandler >> processDeviceEvent: aWinitDeviceEvent forWindow: aWinitWindow [
]

{ #category : #'event - handling' }
WinitWindowEventHandler >> processWindowEvent: aWinitMappedEvent [
	WinitWindowsRegistry default
		detectId: aWinitMappedEvent windowId
		ifFound: [ :aWinitWindow | self processWindowEvent: aWinitMappedEvent forWindow: aWinitWindow ]
]

{ #category : #'event - handling' }
WinitWindowEventHandler >> processWindowEvent: aWinitWindowEvent forWindow: aWindow [
	
]

{ #category : #'event - handling' }
WinitWindowEventHandler >> processWinitEvent: aWinitMappedEvent [
	aWinitMappedEvent isDeviceEvent
		ifTrue: [ ^ self processDeviceEvent: aWinitMappedEvent ].

	aWinitMappedEvent isWindowEvent
		ifTrue: [ ^ self processWindowEvent: aWinitMappedEvent ].
		
	aWinitMappedEvent isCommonEvent
		ifTrue: [ ^ self processCommonEvent: aWinitMappedEvent ]
]
