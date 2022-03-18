Class {
	#name : #GlutinUserInterruptHandler,
	#superclass : #GlutinEventsHandler,
	#traits : 'TGlutinEventVisitor',
	#classTraits : 'TGlutinEventVisitor classTrait',
	#instVars : [
		'buffer',
		'uiProcessBlock',
		'interruptCombinations'
	],
	#category : #'Glutin-Event fetcher'
}

{ #category : #private }
GlutinUserInterruptHandler >> canInterruptDirectly: aProcess [ 
	"Indicates that the given process can be directly interrupted and the look-up 
	should not search for a better process. "
	
	^ aProcess ~~  WeakArray runningFinalizationProcess and: [ 
		"Manually get the value of the local process variable GlutinIgnoreDuringInterruptStatus.
		In general this is not thread-safe as the process can modify this variable.
		In this case this code is run in a high priority process and reads the value 
		for processes at a lower priority. "
		((aProcess psValueAt: GlutinIgnoreDuringInterruptStatus soleInstance index)
			ifNil: [ GlutinIgnoreDuringInterruptStatus soleInstance default ]) not ]
]

{ #category : #private }
GlutinUserInterruptHandler >> handleUserInterrupt [
	"This will be called from the event-fetcher process. 
	Assume no system-vital processes have a lower priority than this, and are thus ok to interrupt"
	UserInterruptHandler cmdDotEnabled ifFalse: [ ^ self ]. 

	[
		self processToInterrupt
			ifNotNil: [ :aProcess | aProcess debugWithTitle: 'User Interrupt' ]
			ifNil: [ NonInteractiveTranscript stdout show: 'There is no process to interrupt'; cr ]
	
	"fork exceptions, we don't want interrupt handler to die"
	] on: Error fork: [:ex | ex pass].
]

{ #category : #initialization }
GlutinUserInterruptHandler >> initialize [
	super initialize.
	
	buffer := Set new.
	uiProcessBlock := [ nil ].
	interruptCombinations := {
		"mac"
		{ WinitEventVirtualKeyCode LWin . WinitEventVirtualKeyCode Period } asSet.
		"linux"
		{ WinitEventVirtualKeyCode LControl . WinitEventVirtualKeyCode Period } asSet.
	}.
]

{ #category : #private }
GlutinUserInterruptHandler >> isAllowedToInterruptProcess: aProcess [
	"Check if the system is allowed to interrupt a process."
	
	"Do not interrupt the idle process; it is fatal."
	^ (aProcess ~~ Processor backgroundProcess and: [
		"suspendedContext sender == nil usually means that process is only scheduled but had no chance to run" 
		aProcess suspendedContext sender notNil])
]

{ #category : #'event - handling' }
GlutinUserInterruptHandler >> processGlutinEvent: aGlutinEvent [
	aGlutinEvent accept: self
]

{ #category : #private }
GlutinUserInterruptHandler >> processToInterrupt [ 
	"Look for best candidate to interrupt: 
		- any scheduled non-finalization process of lower priority
			- if the process has GlutinIgnoreDuringInterruptStatus set true the lookup searches for a better process.
		- the weak-finalization process, if scheduled 
		- the UI process 
	Never interrupt the idle process, since killing it is fatal" 
	| fallback |

	"We use the UI process as a fallback in case no process is found."
	fallback := uiProcessBlock value.

	Processor 
		scanSchedule: [ :aProcess | 
			(self isAllowedToInterruptProcess: aProcess) ifTrue: [
				(self canInterruptDirectly: aProcess )
					ifTrue: [ ^ aProcess ] 
					ifFalse: [ fallback := aProcess ]]]
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
	
	anEvent state = WinitEventInputElementState Released
		ifTrue: [ buffer remove: anEvent virtual_keycode ifAbsent: [  ] ].
	
	anEvent state = WinitEventInputElementState Pressed
		ifTrue: [ buffer add: anEvent virtual_keycode ].
	
	(interruptCombinations notNil and: [ interruptCombinations includes: buffer ])
		ifTrue: [ self handleUserInterrupt ]
]

{ #category : #'event - visiting' }
GlutinUserInterruptHandler >> visitWindowFocusedEvent: anEvent [
	buffer removeAll
]
