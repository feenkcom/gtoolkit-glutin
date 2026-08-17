Class {
	#name : #Winit30WindowEventReceivedText,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'text'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
Winit30WindowEventReceivedText class >> eventType [
	^ WinitEventType Winit30_WindowEventReceivedText
]

{ #category : #'private - ffi' }
Winit30WindowEventReceivedText class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_received_text_release(void* aHandle))
]

{ #category : #'private - ffi' }
Winit30WindowEventReceivedText class >> primTextHandle: aHandle [
	^ self ffiCall: #(void* winit_event_received_text_text(void* aHandle))
]

{ #category : #visiting }
Winit30WindowEventReceivedText >> accept: aVisitor [
	^ aVisitor visitCharacterReceivedEvent: self
]

{ #category : #initialization }
Winit30WindowEventReceivedText >> readFromHandle: aHandle [
	| textHandle |
	textHandle := self class primTextHandle: aHandle.
	text := textHandle isNull
		ifTrue: [ nil ]
		ifFalse: [
			GtStringBox
				fromOwnedHandle: textHandle
				library: self class ffiLibrary
				during: [ :s | s string ] ]
]

{ #category : #accessing }
Winit30WindowEventReceivedText >> text [
	^ text
]
