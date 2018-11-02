Trait {
	#name : #TWinitPtr,
	#category : #'OSWindow-Winit'
}

{ #category : #finalization }
TWinitPtr classSide >> finalizeResourceData: aHandle [
	
	self release: aHandle
]

{ #category : #'private - ffi' }
TWinitPtr classSide >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self explicitRequirement
]

{ #category : #finalization }
TWinitPtr classSide >> release: aHandle [

	aHandle isNull
		"A handle may already be null, if garbage collector did his job before us :) "
		ifTrue: [ ^ self ].

	self warning: [ '(release) Ptr: ', aHandle value asString ].
	self primRelease: aHandle.
	aHandle getHandle beNull
]

{ #category : #debug }
TWinitPtr classSide >> warning: aMessageBlock [ 
	"| message |

	message := '[', self name asString ,'] ', aMessageBlock value.

	Transcript show: message; cr"
]

{ #category : #'initialize-release' }
TWinitPtr >> release [

	self class release: self resourceData.
	
	"#release is sent manually, so we want to make sure that resource is no longer
	added to weak registry - performance improvement"
	FFIExternalResourceManager removeResource: self
]
