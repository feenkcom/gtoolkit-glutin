Class {
	#name : #WinitSessionCache,
	#superclass : #Object,
	#instVars : [
		'session',
		'value',
		'getter'
	],
	#category : #'Glutin-Library'
}

{ #category : #'instance creation' }
WinitSessionCache class >> getter: aBlock [

	^ self new getter: aBlock
]

{ #category : #accessing }
WinitSessionCache >> getter [
	^ getter
]

{ #category : #accessing }
WinitSessionCache >> getter: aBlockClosure [

	getter := aBlockClosure
]

{ #category : #'private - accessing' }
WinitSessionCache >> session [
	<return: #GtWorkingSession>

	^ session
]

{ #category : #'private - accessing' }
WinitSessionCache >> session: aGtWorkingSession [

	session := aGtWorkingSession
]

{ #category : #accessing }
WinitSessionCache >> value [

	Smalltalk image session == session ifFalse:
		[ value := getter value ].
	
	^ value
]
