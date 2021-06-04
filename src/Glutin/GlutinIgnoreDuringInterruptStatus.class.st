"
I indicate that a process should be ignored by the interrupt handler even if it is scheduled and running.

I am used with the TFFI callback process that handles Glutin events. Before a callback finished execution it lowers its priority so that the next callback executes faster. However, if the next callback process handles a user interrupt event the previous callback might still not be finished, just waiting to be given again the CPU to terminate. That callback has a higher priority than the UI process so the interrupt handler will selected it for interruption. To avoid this when a Glutin callback lowers its priority we mark it using this variable to let the interrupt handler know that it can be ignored.


"
Class {
	#name : #GlutinIgnoreDuringInterruptStatus,
	#superclass : #ProcessLocalVariable,
	#category : #'Glutin-Event fetcher'
}

{ #category : #accessing }
GlutinIgnoreDuringInterruptStatus >> default [
	"By default do not ignore a process during the CMD+. interrupt handler."
	
	^ false
]
