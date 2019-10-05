Class {
	#name : #Glutin,
	#superclass : #Object,
	#classVars : [
		'AccessMutex'
	],
	#category : #Glutin
}

{ #category : #'class initialization' }
Glutin class >> critical: aBlock [
	AccessMutex critical: aBlock
]

{ #category : #'class initialization' }
Glutin class >> initialize [
	AccessMutex := Mutex new
]
