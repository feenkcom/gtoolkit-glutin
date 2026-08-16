Class {
	#name : #GlutinWindowScaleFactorChangedEvent,
	#superclass : #GlutinWindowEvent,
	#instVars : [
		'scale_factor',
		'width',
		'height'
	],
	#category : #'Winit-Events'
}

{ #category : #'event type' }
GlutinWindowScaleFactorChangedEvent class >> eventType [
	^ WinitEventType WindowEventScaleFactorChanged
]

{ #category : #'private - ffi' }
GlutinWindowScaleFactorChangedEvent class >> primHeight: aHandle [
	^ self ffiCall: #(uint32 winit_event_scale_factor_changed_height(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinWindowScaleFactorChangedEvent class >> primRelease: aHandle [
	self ffiCall: #(void winit_event_scale_factor_changed_release(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinWindowScaleFactorChangedEvent class >> primScaleFactor: aHandle [
	^ self ffiCall: #(float64 winit_event_scale_factor_changed_scale_factor(void* aHandle))
]

{ #category : #'private - ffi' }
GlutinWindowScaleFactorChangedEvent class >> primWidth: aHandle [
	^ self ffiCall: #(uint32 winit_event_scale_factor_changed_width(void* aHandle))
]

{ #category : #visiting }
GlutinWindowScaleFactorChangedEvent >> accept: aVisitor [
	^ aVisitor visitWindowScaleFactorChangedEvent: self
]

{ #category : #accessing }
GlutinWindowScaleFactorChangedEvent >> height [
	^ height
]

{ #category : #initialization }
GlutinWindowScaleFactorChangedEvent >> readFromHandle: aHandle [
	scale_factor := self class primScaleFactor: aHandle.
	width := self class primWidth: aHandle.
	height := self class primHeight: aHandle
]

{ #category : #accessing }
GlutinWindowScaleFactorChangedEvent >> scale_factor [
	^ scale_factor
]

{ #category : #accessing }
GlutinWindowScaleFactorChangedEvent >> width [
	^ width
]
