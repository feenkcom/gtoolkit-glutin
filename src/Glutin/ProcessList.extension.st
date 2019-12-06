Extension { #name : #ProcessList }

{ #category : #'*Glutin' }
ProcessList >> firstOrNil [
	"Answer the first link or nil if the receiver is empty."
^firstLink ifNotNil: [ :fl | fl value ]
]
