Class {
	#name : #WinitIgnoreDuringInterruptStatus,
	#superclass : #ProcessLocalVariable,
	#category : #'Winit-Event Loop'
}

{ #category : #accessing }
WinitIgnoreDuringInterruptStatus >> default [
	"By default do not ignore a process during the CMD+. interrupt handler."
	
	^ false
]
