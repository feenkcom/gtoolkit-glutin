Class {
	#name : #GlutinPixelFormatExamples,
	#superclass : #GlutinExternalObjectExamples,
	#category : #'Glutin-Examples'
}

{ #category : #examples }
GlutinPixelFormatExamples >> default [
	<gtExample>
	| aPixelFormat |
	
	aPixelFormat := GlutinPixelFormat new.
	self assert: aPixelFormat alphaBits equals: 0.
	self assert: aPixelFormat colorBits equals: 0.
	self assert: aPixelFormat depthBits equals: 0.
	self assert: aPixelFormat stencilBits equals: 0.
	self assert: aPixelFormat multisapling equals: 0.
	self assert: aPixelFormat hasMultisampling not.
	self assert: aPixelFormat isDoubleBuffer not.
	self assert: aPixelFormat isHardwareAccelerated not.
	self assert: aPixelFormat isSrgb not.
	self assert: aPixelFormat isStereoscopy not.
	
	^ aPixelFormat
]
