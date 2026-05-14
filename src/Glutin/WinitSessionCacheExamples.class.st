Class {
	#name : #WinitSessionCacheExamples,
	#superclass : #TestCase,
	#instVars : [
		'counter',
		'firstSession',
		'secondSession',
		'firstComputed',
		'secondComputed',
		'cache'
	],
	#category : #'Glutin-Examples'
}

{ #category : #private }
WinitSessionCacheExamples >> cacheWithCounterGetter [
	cache := WinitSessionCache new.
	counter := 0.
	cache getter: [ counter := counter + 1. counter ].
	^ cache
]

{ #category : #examples }
WinitSessionCacheExamples >> doesNotComputeBeforeFirstValueRequest [
	<gtExample>
	self cacheWithCounterGetter.
	cache session: firstSession.
	self assert: counter equals: 0.
	firstComputed := cache value.
	self assert: firstComputed equals: 1.
	self assert: counter equals: 1.
	^ cache
]

{ #category : #examples }
WinitSessionCacheExamples >> recomputesWhenStoredSessionDiffersFromCurrentImageSession [
	<gtExample>
	self cacheWithCounterGetter.
	firstComputed := cache value.
	cache session: Object new.
	secondComputed := cache value.
	self assert: firstComputed equals: 1.
	self assert: secondComputed equals: 2.
	self assert: counter equals: 2.
	^ cache
]

{ #category : #examples }
WinitSessionCacheExamples >> usesGetterResultAsCachedValue [
	<gtExample>
	| expected |
	expected := Object new.
	cache := WinitSessionCache new.
	counter := 0.
	cache getter: [ counter := counter + 1. expected ].
	firstComputed := cache value.
	self assert: firstComputed identicalTo: expected.
	self assert: counter equals: 1.
	^ cache
]
