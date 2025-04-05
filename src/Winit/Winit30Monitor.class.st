Class {
	#name : #Winit30Monitor,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit30',
	#classTraits : 'TWinit30 classTrait',
	#category : #'Winit-External'
}

{ #category : #'private - ffi' }
Winit30Monitor class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_monitor_drop(void* aHandle))
]

{ #category : #accessing }
Winit30Monitor >> extent [
	"Return the size of the monitor in physical pixels"
	<return: #Point>

	^ self ffiLibrary getSizeU32From: [ :aSizeU32 |
		self primGetSize: aSizeU32 ]
]

{ #category : #views }
Winit30Monitor >> gtInfoFor: aView [
	<gtView>
	^ aView forward
		title: 'Items';
		priority: 5;
		object: [ {'Extent' -> self extent.
				'Scale factor' -> self scaleFactor} asOrderedDictionary ];
		view: #gtItemsFor:
]

{ #category : #accessing }
Winit30Monitor >> logicalSize [
	^ self physicalSize asLogical: self scaleFactor
]

{ #category : #accessing }
Winit30Monitor >> physicalSize [
	^ FensterPhysicalSize fromPoint: self extent
]

{ #category : #'private - ffi' }
Winit30Monitor >> primGetScaleFactor [
	^ self ffiCall: #(float64 winit_monitor_get_hidpi_factor(self))
]

{ #category : #'private - ffi' }
Winit30Monitor >> primGetSize: aSizeU32 [
	^ self ffiCall: #(void winit_monitor_get_size(
		self,
		GtSizeBoxU32 aSizeU32))
]

{ #category : #accessing }
Winit30Monitor >> scaleFactor [
	^ self primGetScaleFactor
]
