Class {
	#name : #GlutinSizeF64,
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
GlutinSizeF64 class >> externalNew [
	^ self primCreate
]

{ #category : #'library path' }
GlutinSizeF64 class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #'field definition' }
GlutinSizeF64 class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		float64 x
		float64 y
 	)
]

{ #category : #'instance creation' }
GlutinSizeF64 class >> new [
	"The difference with #externalNew is that the memory is managed automatically"

	^ self externalNew autoRelease
]

{ #category : #'private - ffi' }
GlutinSizeF64 class >> primCreate [
	^ self ffiCall: #(GlutinSizeF64* glutin_create_size_f64())
]

{ #category : #'private - ffi' }
GlutinSizeF64 class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_size_f64(void* aHandle))
]

{ #category : #'external resource management' }
GlutinSizeF64 >> resourceData [
	^ self getHandle
]

{ #category : #'accessing structure variables' }
GlutinSizeF64 >> x [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_X
]

{ #category : #'accessing structure variables' }
GlutinSizeF64 >> x: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_X put: anObject
]

{ #category : #'accessing structure variables' }
GlutinSizeF64 >> y [
	"This method was automatically generated"
	^handle doubleAt: OFFSET_Y
]

{ #category : #'accessing structure variables' }
GlutinSizeF64 >> y: anObject [
	"This method was automatically generated"
	handle doubleAt: OFFSET_Y put: anObject
]
