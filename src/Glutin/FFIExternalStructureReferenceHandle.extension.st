Extension { #name : #FFIExternalStructureReferenceHandle }

{ #category : #'*Glutin' }
FFIExternalStructureReferenceHandle >> platformSizeTAt: byteOffset [
	^ self 
		integerAt: byteOffset 
		size: FFIArchitecture forCurrentArchitecture sizeTTypeSize
		signed: false
]
