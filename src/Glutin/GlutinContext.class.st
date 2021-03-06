Class {
	#name : #GlutinContext,
	#superclass : #GlutinExternalObject,
	#instVars : [
		'eventsLoop',
		'sharedContext'
	],
	#category : #'Glutin-External'
}

{ #category : #'api - gl' }
GlutinContext >> api [
	<return: #GlutinContextApi>

	^ self primGetApi
]

{ #category : #accessing }
GlutinContext >> eventLoop [
	^ eventsLoop
]

{ #category : #accessing }
GlutinContext >> eventLoop: anObject [
	eventsLoop := anObject
]

{ #category : #'api - gl' }
GlutinContext >> getProcAddress: aProcNameString [
	"Gets an OpenGL procedure address."
	<return: #ExternalAddress>
	
	^ GtBoxerString
		fromString: aProcNameString
		during: [ :aGtBoxerString | self primGetProcAddress: aGtBoxerString ]
]

{ #category : #'api - gl' }
GlutinContext >> isCurrent [
	<return: #Boolean>
	
	^ self isValid
		ifFalse: [ false ]
		ifTrue: [ self primIsCurrent ]
]

{ #category : #testing }
GlutinContext >> isHeadless [
	^ false
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
GlutinContext >> primGetApi [
	^ self subclassResponsibility
]

{ #category : #'private - ffi' }
GlutinContext >> primGetProcAddress: aGtBoxerString [
	^ self subclassResponsibility
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

{ #category : #accessing }
GlutinContext >> sharedContext [
	^ sharedContext
]

{ #category : #accessing }
GlutinContext >> sharedContext: anObject [
	sharedContext := anObject
]
