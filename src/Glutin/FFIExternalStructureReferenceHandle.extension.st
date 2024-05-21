Extension { #name : #FFIExternalStructureReferenceHandle }

{ #category : #'*Glutin' }
FFIExternalStructureReferenceHandle >> platformSizeTAt: byteOffset [
	<gtPharoPatch: #Pharo>
	
	^ self 
		integerAt: byteOffset 
		size: FFIArchitecture forCurrentArchitecture sizeTTypeSize
		signed: false
]
