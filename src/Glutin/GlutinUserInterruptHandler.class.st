Class {
	#name : #GlutinUserInterruptHandler,
	#superclass : #GlutinEventsHandler,
	#traits : 'TGlutinEventVisitor',
	#classTraits : 'TGlutinEventVisitor classTrait',
	#instVars : [
		'buffer',
		'uiProcessBlock'
	],
	#classVars : [
		'Combinations'
	],
	#category : #'Glutin-Events Fetcher'
}

{ #category : #'class initialization' }
GlutinUserInterruptHandler class >> initialize [
	Combinations := {
		"mac"
		{ GlutinEventVirtualKeyCode LWin . GlutinEventVirtualKeyCode Period } asSet
	}
]

{ #category : #private }
GlutinUserInterruptHandler >> handleUserInterrupt [
	"This will be called from the event-fetcher process. 
	Assume no system-vital processes have a lower priority than this, and are thus ok to interrupt"
	UserInterruptHandler cmdDotEnabled ifFalse: [ ^ self ]. 

	[
		self processToInterrupt
			ifNotNil: [ :proc | proc debugWithTitle: 'User Interrupt' ]
			ifNil: [ NonInteractiveTranscript stdout show: 'There is no process to interrupt'; cr ]
	
	"fork exceptions, we don't want interrupt handler to die"
	] on: Error fork: [:ex | ex pass].
]

{ #category : #initialization }
GlutinUserInterruptHandler >> initialize [
	super initialize.
	
	buffer := Set new.
	uiProcessBlock := [ nil ]
]

{ #category : #'event - handling' }
GlutinUserInterruptHandler >> processGlutinEvent: aGlutinEvent [
	aGlutinEvent accept: self
]

{ #category : #private }
GlutinUserInterruptHandler >> processToInterrupt [ 
	"Look for best candidate to interrupt: 
		- any scheduled non-finalization process of lower priority 
		- the weak-finalization process, if scheduled 
		- the UI process 
	Never interrupt the idle process, since killing it is fatal" 
	| fallback |

	fallback := uiProcessBlock value.

	Processor 
		scanSchedule: [:p | 
		 "suspendedContext sender == nil usually means that process is only scheduled but had no chance to run" 
			((p priority > (Processor lowestPriority + 1)) and: [p suspendedContext sender notNil]) ifTrue: [
				p ~~  WeakArray runningFinalizationProcess 
					ifTrue: [^p] 
					ifFalse: [fallback := p]]]
		startingAt: Processor activePriority.
	^fallback
]

{ #category : #accessing }
GlutinUserInterruptHandler >> uiProcessBlock: aBlock [
	uiProcessBlock := aBlock
]

{ #category : #'event - visiting' }
GlutinUserInterruptHandler >> visitKeyboardInputEvent: anEvent [
	
	anEvent has_virtual_keycode
		ifFalse: [ ^ self ].
	
	anEvent state = GlutinEventInputElementState Released
		ifTrue: [ buffer remove: anEvent virtual_keycode ifAbsent: [  ] ].
	
	anEvent state = GlutinEventInputElementState Pressed
		ifTrue: [ buffer add: anEvent virtual_keycode ].
	
	(Combinations includes: buffer)
		ifTrue: [ self handleUserInterrupt ]
]

{ #category : #'event - visiting' }
GlutinUserInterruptHandler >> visitWindowFocusedEvent: anEvent [
	buffer removeAll
]
