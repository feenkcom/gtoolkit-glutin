Class {
	#name : #GlutinExternalObject,
	#superclass : #FFIExternalObject,
	#category : #'Glutin-External'
}

{ #category : #'library path' }
GlutinExternalObject class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #finalization }
GlutinExternalObject class >> finalizeResourceData: aHandle [
	
	self release: aHandle
]

{ #category : #'instance creation' }
GlutinExternalObject class >> fromHandle: aHandle [
	^ self basicNew
		initialize;
		setHandle: aHandle
]

{ #category : #'instance creation' }
GlutinExternalObject class >> fromNativeHandle: anExternalData [
	^ (self fromHandle: (anExternalData getHandle)) autoRelease
]

{ #category : #'instance creation' }
GlutinExternalObject class >> new [
	^ self fromNativeHandle: self primCreate
]

{ #category : #'instance creation' }
GlutinExternalObject class >> null [
	^ self fromHandle: self primNullPtr
]

{ #category : #'private - ffi' }
GlutinExternalObject class >> primCreate [

	"^ self ffiCall: #(void* glutin_object_default())"

	^ self subclassResponsibility
]

{ #category : #'private - ffi' }
GlutinExternalObject class >> primNullPtr [
	^ self ffiCall: #(void* skia_null_ptr())
]

{ #category : #'private - ffi' }
GlutinExternalObject class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	"self ffiCall: #(void glutin_object_drop(void* aHandle))"
	self subclassResponsibility
]

{ #category : #finalization }
GlutinExternalObject class >> release: aHandle [
	aHandle isNull
		"A handle may already be null, if garbage collector did his job before us :)"
		ifTrue: [ ^ self ].

	self warning: [ '(release) Ptr: ', aHandle value asString ].
	self primRelease: aHandle.
	aHandle getHandle beNull
]

{ #category : #debug }
GlutinExternalObject class >> warning: aMessageBlock [ 
	"| message |

	message := '[', self name asString ,'] ', aMessageBlock value.

	Transcript show: message; cr"
]

{ #category : #dependencies }
GlutinExternalObject >> ffiLibraryName [
	^ self class ffiLibraryName
]

{ #category : #dependencies }
GlutinExternalObject >> release [	
	"#release is sent manually, so we want to make sure that resource is no longer
	added to weak registry - performance improvement"
	(FFIExternalResourceManager uniqueInstance instVarNamed: #registry) remove: self ifAbsent: [ ].

	self class release: self resourceData
]
