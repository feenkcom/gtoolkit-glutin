Class {
	#name : #GlutinSizeU64,
	#superclass : #FFIExternalStructure,
	#traits : 'TGlutinPtr',
	#classTraits : 'TGlutinPtr classTrait',
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #'Glutin-Structures'
}

{ #category : #'instance creation' }
GlutinSizeU64 class >> externalNew [
	^ self primCreate
]

{ #category : #'library path' }
GlutinSizeU64 class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'field definition' }
GlutinSizeU64 class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		uint64 x
		uint64 y
 	)
]

{ #category : #'instance creation' }
GlutinSizeU64 class >> new [
	"The difference with #externalNew is that the memory is managed automatically"

	^ self externalNew autoRelease
]

{ #category : #'private - ffi' }
GlutinSizeU64 class >> primCreate [
	^ self ffiCall: #(GlutinSizeU64* glutin_create_size_u64())
]

{ #category : #'private - ffi' }
GlutinSizeU64 class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_size_u64(void* aHandle))
]

{ #category : #converting }
GlutinSizeU64 >> asInteger [
	^ (self y << 32) + self x
]

{ #category : #'external resource management' }
GlutinSizeU64 >> resourceData [
	^ self getHandle
]

{ #category : #'accessing structure variables' }
GlutinSizeU64 >> x [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinSizeU64 >> x: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinSizeU64 >> y [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinSizeU64 >> y: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_Y put: anObject
]
