Class {
	#name : #GlutinDeviceEventModifiersChangedEvent,
	#superclass : #Object,
	#instVars : [
		'shift',
		'ctrl',
		'alt',
		'logo'
	],
	#category : #'Winit-Events'
}

{ #category : #'instance creation' }
GlutinDeviceEventModifiersChangedEvent class >> new [
	^ super new initialize
]

{ #category : #visiting }
GlutinDeviceEventModifiersChangedEvent >> accept: aVisitor [
	^ aVisitor visitModifiersChanged: self
]

{ #category : #accessing }
GlutinDeviceEventModifiersChangedEvent >> alt [
	^ alt
]

{ #category : #accessing }
GlutinDeviceEventModifiersChangedEvent >> alt: anObject [
	alt := anObject
]

{ #category : #copying }
GlutinDeviceEventModifiersChangedEvent >> copy [
	^ self class new
		shift: self shift;
		ctrl: self ctrl;
		alt: self alt;
		logo: self logo;
		yourself
]

{ #category : #accessing }
GlutinDeviceEventModifiersChangedEvent >> ctrl [
	^ ctrl
]

{ #category : #accessing }
GlutinDeviceEventModifiersChangedEvent >> ctrl: anObject [
	ctrl := anObject
]

{ #category : #initialization }
GlutinDeviceEventModifiersChangedEvent >> initialize [
	shift := false.
	ctrl := false.
	alt := false.
	logo := false
]

{ #category : #accessing }
GlutinDeviceEventModifiersChangedEvent >> logo [
	^ logo
]

{ #category : #accessing }
GlutinDeviceEventModifiersChangedEvent >> logo: anObject [
	logo := anObject
]

{ #category : #printing }
GlutinDeviceEventModifiersChangedEvent >> printOn: aStream [
	aStream
		nextPutAll: '{ shift: ';
		print: self shift.
	aStream
		nextPutAll: ' alt: ';
		print: self alt.
	aStream
		nextPutAll: ' ctrl: ';
		print: self ctrl.
	aStream
		nextPutAll: ' logo: ';
		print: self logo;
		nextPutAll: ' }'
]

{ #category : #accessing }
GlutinDeviceEventModifiersChangedEvent >> shift [
	^ shift
]

{ #category : #accessing }
GlutinDeviceEventModifiersChangedEvent >> shift: anObject [
	shift := anObject
]
