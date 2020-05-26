Class {
	#name : #GlutinPollingEventLoopExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #accessing }
GlutinPollingEventLoopExamples >> default [
	<gtExample>
	
	^ GlutinPollingEventLoop new
]

{ #category : #accessing }
GlutinPollingEventLoopExamples >> poll [
	<gtExample>
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
