Class {
	#name : #WinitMonitor,
	#superclass : #GtBoxerValueBox,
	#traits : 'TWinit',
	#classTraits : 'TWinit classTrait',
	#category : #'Glutin-External'
}

{ #category : #'private - ffi' }
WinitMonitor class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	self ffiCall: #(void winit_monitor_drop(void* aHandle))
]

{ #category : #accessing }
WinitMonitor >> extent [
	"Return the size of the monitor in physical pixels"
	<return: #Point>

	^ self ffiLibrary getSizeU32From: [ :aSizeU32 |
		self primGetSize: aSizeU32 ]
]

{ #category : #views }
WinitMonitor >> gtInfoFor: aView [
	<gtView>
	^ aView forward
		title: 'Items';
		priority: 5;
		object: [ {'Extent' -> self extent.
				'Scale factor' -> self scaleFactor} asOrderedDictionary ];
		view: #gtItemsFor:
]

{ #category : #accessing }
WinitMonitor >> logicalSize [
	^ self physicalSize asLogical: self scaleFactor
]

{ #category : #accessing }
WinitMonitor >> physicalSize [
	^ FensterPhysicalSize fromPoint: self extent
]

{ #category : #'private - ffi' }
WinitMonitor >> primGetScaleFactor [
	^ self ffiCall: #(float64 winit_monitor_get_hidpi_factor(self))
]

{ #category : #'private - ffi' }
WinitMonitor >> primGetSize: aSizeU32 [
	^ self ffiCall: #(void winit_monitor_get_size(
		self,
		GtSizeBoxU32 aSizeU32))
]

{ #category : #accessing }
WinitMonitor >> scaleFactor [
	^ self primGetScaleFactor
]
