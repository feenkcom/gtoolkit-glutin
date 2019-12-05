Class {
	#name : #GlutinContext,
	#superclass : #GlutinExternalObject,
	#instVars : [
		'eventsLoop'
	],
	#category : #'Glutin-External'
}

{ #category : #accessing }
GlutinContext >> eventsLoop [
	^ eventsLoop
]

{ #category : #accessing }
GlutinContext >> eventsLoop: anObject [
	eventsLoop := anObject
]

{ #category : #'api - gl' }
GlutinContext >> isCurrent [
	<return: #Boolean>
	
	^ self isValid
		ifFalse: [ false ]
		ifTrue: [ self primIsCurrent ]
]

{ #category : #'api - gl' }
GlutinContext >> makeCurrent [	
	self isValid
		ifFalse: [ ^ self ].
	
	self isCurrent
		ifTrue: [ ^ self ].

	self primMakeCurrent
]

{ #category : #'private - ffi' }
GlutinContext >> primIsCurrent [
	"^ self ffiCall: #(bool glutin_context_is_current(self))"
	^ self subclassResponsibility
]

{ #category : #'private - ffi' }
GlutinContext >> primMakeCurrent [
	"^ self ffiCall: #(void glutin_context_make_current(self))"
	^ self subclassResponsibility
]