Class {
	#name : #RustWindowingBaseEvent,
	#superclass : #GtBoxerExternalStructure,
	#classInstVars : [
		'EventTypeMap'
	],
	#category : #'Winit-Events'
}

{ #category : #accessing }
RustWindowingBaseEvent class >> eventMap [
	^ EventTypeMap
]

{ #category : #'field definition' }
RustWindowingBaseEvent class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^ #(
		
 	)
]

{ #category : #initialization }
RustWindowingBaseEvent class >> initialize [
	self initializeEventTypeMap
]

{ #category : #initialization }
RustWindowingBaseEvent class >> initializeEventTypeMap [
	<script: 'self initializeEventTypeMap'>

	EventTypeMap := Dictionary new.
	GlutinMappedEvent allSubclassesDo: [ :cls |
		| eventType |
		eventType := cls eventType.
		eventType ifNotNil: [ EventTypeMap at: eventType put: cls ] ]
]
