Extension { #name : #ProcessorScheduler }

{ #category : #'*Glutin' }
ProcessorScheduler >> gtNextReadyProcess [
	quiescentProcessLists reverseDo: [ :list |
		list firstOrNil ifNotNil: [ :proc |
			proc suspendedContext ifNotNil: [ ^proc ]]].
	^nil
]
