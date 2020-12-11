Class {
	#name : #GlutinWorldExternalForm,
	#superclass : #Form,
	#instVars : [
		'pointer'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #initialize }
GlutinWorldExternalForm >> allocateSpace [
	"Convenient way to allocate space for the pixels.  This isn't done by default, because it is common to use a pointer obtained from elsewhere."
	| addr |
	pointer ifNotNil: [self error: 'space is already allocated'].
	addr := ExternalAddress gcallocate: width*height * depth/8. "area times bytes/pixel"
	self setManualSurfacePointer: addr.
]

{ #category : #initialize }
GlutinWorldExternalForm >> destroySurface [
	"Users must call this explicitly when this object is no longer needed; otherwise, resource-leakage will occur in the SurfacePlugin"
	bits ifNotNil: [:surfaceID |
		bits := nil.
		self primDestroyManualSurface: surfaceID
	].
]

{ #category : #accessing }
GlutinWorldExternalForm >> pointer [
	^pointer
]

{ #category : #primitives }
GlutinWorldExternalForm >> primCreateManualSurfaceWidth: aWidth height: aHeight rowPitch: rowPitch depth: aDepth isMSB: isMSB [
	<primitive: 'primitiveCreateManualSurface' module: 'SqueakFFIPrims'>
	self primitiveFailed

]

{ #category : #primitives }
GlutinWorldExternalForm >> primDestroyManualSurface: surfaceID [
	<primitive: 'primitiveDestroyManualSurface' module: 'SqueakFFIPrims'>
	self primitiveFailed

]

{ #category : #primitives }
GlutinWorldExternalForm >> primManualSurface: surfaceID setPointer: aPointer [
	"The 'surfaceID' is a handle returned by #primitiveCreateManualSurface from SurfacePlugin. The pointer is a 32-bit unsigned integer that SurfacePlugin casts to a void*."
	<primitive: 'primitiveSetManualSurfacePointer' module: 'SqueakFFIPrims'>
	self primitiveFailed

]

{ #category : #initialize }
GlutinWorldExternalForm >> setExtent: extent depth: bitsPerPixel [
	bits ifNotNil: [self error: 'bits are already set'].
	bitsPerPixel == 32 ifFalse: [self error: 'only 32 bits for now'.  "see 'rowPitch' below"].
	width := extent x asInteger.
	width < 0 ifTrue: [width := 0].
	height := extent y asInteger.
	height < 0 ifTrue: [height := 0].
	depth := bitsPerPixel.
	bits := self 
		primCreateManualSurfaceWidth: width 
		height: height 
		rowPitch: width * 4
		depth: bitsPerPixel
		isMSB: true.
]

{ #category : #initialize }
GlutinWorldExternalForm >> setExtent: extent depth: bitsPerPixel bits: aPointer [
	self setExtent: extent depth: bitsPerPixel.
	self setManualSurfacePointer: aPointer.
]

{ #category : #initialize }
GlutinWorldExternalForm >> setManualSurfacePointer: newPointer [ "ExternalStructure, ExternalAddress, or nil"
	"Set the memory-location of the image data.  It is OK to set a NULL pointer;
	 in this case, any attempt to BitBlt to or from the form will result in a primitive-failure."
	pointer := newPointer.
	pointer ifNil: [^self primManualSurface: bits setPointer: 0].
	pointer isExternalAddress
		ifFalse: ["must already be ExternalStructure, so nothing to do"]
		ifTrue: [pointer := ExternalData 
							fromHandle: newPointer 
							type: ExternalType void asPointerType].
	"The primitive expects an unsigned integer arg, not an ExternalAddress."
	"NOTE: it used to be acceptable for 'newPointer' to be an Integer... 
	 if you get a MNU for #getHandle here, you should update your code 
	 to pass in either an ExternalStructure or an ExternalAddress."
	self primManualSurface: bits setPointer: pointer getHandle asInteger
]
