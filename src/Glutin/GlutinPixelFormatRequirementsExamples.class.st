Class {
	#name : #GlutinPixelFormatRequirementsExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #accessing }
GlutinPixelFormatRequirementsExamples >> default [
	<gtExample>
	| aPixelFormatRequirements |
	
	aPixelFormatRequirements := GlutinPixelFormatRequirements new.
	self assert: (aPixelFormatRequirements alphaBitsDo: #yourself ifNone: nil) equals: 8.
	self assert: (aPixelFormatRequirements colorBitsDo: #yourself ifNone: nil) equals: 24.
	self assert: (aPixelFormatRequirements depthBitsDo: #yourself ifNone: nil) equals: 24.
	self assert: (aPixelFormatRequirements stencilBitsDo: #yourself ifNone: nil) equals: 8.
	self assert: (aPixelFormatRequirements multisamplingDo: #yourself ifNone: nil) equals: nil.
	self assert: (aPixelFormatRequirements doubleBufferDo: #yourself ifNone: nil) equals: nil.
	self assert: (aPixelFormatRequirements hardwareAcceleratedDo: #yourself ifNone: nil).
	self assert: aPixelFormatRequirements isFlatColorBuffer not.
	self assert: aPixelFormatRequirements isSrgb.
	self assert: aPixelFormatRequirements isStereoscopy not.
	
	^ aPixelFormatRequirements
]
