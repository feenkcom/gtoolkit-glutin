Extension { #name : #FFIExternalStructureReferenceHandle }

{ #category : #'*Winit' }
FFIExternalStructureReferenceHandle >> platformSizeTAt: byteOffset [
	<gtPharoPatch: #Pharo>
	
	^ self 
		integerAt: byteOffset 
		size: FFIArchitecture forCurrentArchitecture sizeTTypeSize
		signed: false
]
