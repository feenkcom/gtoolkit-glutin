Class {
	#name : #GlutinPollingEventLoopExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #accessing }
GlutinPollingEventLoopExamples >> default [
	<gtExample>
	<noTest>
	
	^ GlutinPollingEventLoop new
]

{ #category : #accessing }
GlutinPollingEventLoopExamples >> poll [
	<gtExample>
	<noTest>
	| anEventLoop |
	
	anEventLoop := self default.
	anEventLoop poll: [ :anEvent | ].
]

{ #category : #accessing }
GlutinPollingEventLoopExamples >> run [
	| anEventLoop |
	
	anEventLoop := self default.
	anEventLoop run
]
