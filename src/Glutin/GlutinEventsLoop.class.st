Class {
	#name : #GlutinEventsLoop,
	#superclass : #FFIExternalObject,
	#traits : 'TGlutinLibrary + TGlutinPtr',
	#classTraits : 'TGlutinLibrary classTrait + TGlutinPtr classTrait',
	#category : #Glutin
}

{ #category : #'api - instantiation' }
GlutinEventsLoop class >> create [
	^ self primCreate
		initialize;
		autoRelease
]

{ #category : #'library path' }
GlutinEventsLoop class >> ffiLibraryName [
	^ GlutinLibrary
]

{ #category : #private }
GlutinEventsLoop class >> filteredEvents: theEvents [
	"Filter unnecessary duplicated events that we don't have to process within same frame,
	for example window resize event, window refresh events and mouse move events"
	| groupedByWindow toBeRemoved |
	
	toBeRemoved := Set new.
	
	groupedByWindow := theEvents groupedBy: [ :anEvent | anEvent window_id asInteger ].
	groupedByWindow := groupedByWindow collect: [ :aCollectionOfEvents |
		| groupedByEventType |
		groupedByEventType := aCollectionOfEvents groupedBy: [ :anEvent | anEvent event_type ].
		self uniqueEventTypes do: [ :anEventType |
			groupedByEventType
				at: anEventType
				ifPresent: [ :theEventsOfEachType | toBeRemoved addAll: theEventsOfEachType allButLast ] ].
		groupedByEventType values ].

	^ self orderedEvents: (theEvents copyWithoutAll: toBeRemoved)
]

{ #category : #'instance creation' }
GlutinEventsLoop class >> new [
	^ self create
]

{ #category : #private }
GlutinEventsLoop class >> orderedEvents: theEvents [
	| keyEvents groupedByKey toBeRemoved toBeSwapped theOrderedEvents |
	"I fix the order of some events"
	
	theOrderedEvents := theEvents asArray copy.

	toBeRemoved := Set new.
	toBeSwapped := OrderedCollection new.

	keyEvents := theEvents select: [ :each | each event_type = WinitEventType WindowEventKeyboardInput ].
	groupedByKey := keyEvents groupedBy: [ :each | each keyboard_input virtual_keycode ] having: [ :each | each size > 1 ].

	groupedByKey do: [ :eachKeyGroup |
		| groupedByState |
		groupedByState := eachKeyGroup groupedBy: [ :each | each keyboard_input state ].
		groupedByState do: [ :each | toBeRemoved addAll: each allButFirst ].
		groupedByState := groupedByState collect: [ :each | each first ].
		
		(groupedByState keys size > 1 and: [ groupedByState keys first = GlutinEventInputElementState Released ])
			ifTrue: [ toBeSwapped add: (groupedByState values first -> groupedByState values second) ] ].

	toBeSwapped do: [ :eachPair |
		| oneIndex anotherIndex |
		
		oneIndex := theOrderedEvents indexOf: eachPair key.
		anotherIndex := theOrderedEvents indexOf: eachPair value.
		theOrderedEvents swap: oneIndex with: anotherIndex ].

	^ theOrderedEvents copyWithoutAll: toBeRemoved
]

{ #category : #'private - ffi' }
GlutinEventsLoop class >> primCreate [
	^ self ffiCall: #(#GlutinEventsLoop glutin_create_events_loop())
]

{ #category : #'private - ffi' }
GlutinEventsLoop class >> primRelease: aHandle [
	
	"Plain pointers must be deleted using delete(), all users must implement a specific method"
	^ self ffiCall: #(void glutin_destroy_events_loop(void* aHandle))
]

{ #category : #private }
GlutinEventsLoop class >> uniqueEventTypes [
	"Types of events that should be unique per frame.
	e.g. We don't need multiple window resize or refresh events"
	^ {
		WinitEventType WindowEventResized.
		WinitEventType WindowEventRefresh.
		WinitEventType WindowEventCursorMoved.
		WinitEventType WindowEventMoved
	}
]

{ #category : #events }
GlutinEventsLoop >> fetchEvents: aBlock [
	| theEventsBuffer theEvents filteredEvents |

	self isNull
		ifTrue: [ ^ self ].

	theEventsBuffer := GlutinFetchedEvents fromHandle: self primCreateFetchedEvents getHandle.
	self primFetchEvents: theEventsBuffer getHandle.
	
	theEventsBuffer length isZero
		ifTrue: [
			self primFreeEvents: theEventsBuffer getHandle.
			^ self ].
		
	theEvents := FFIExternalArray
		fromHandle: theEventsBuffer data getHandle
		type: GlutinBaseEvent
		size: theEventsBuffer length.
	
	filteredEvents := self class filteredEvents: theEvents asArray.	
	filteredEvents do: [ :anEvent | aBlock value: anEvent ].
	
	self primFreeEvents: theEventsBuffer getHandle
]

{ #category : #initialization }
GlutinEventsLoop >> initialize [
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primCreateFetchedEvents [
	^ self ffiCall: #(void* glutin_create_fetched_events ())
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primFetchEvents: aBuffer [
	^ self ffiCall: #(void glutin_events_loop_fetch_events(GlutinEventsLoop self, void* aBuffer))
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primFreeEvents: aBuffer [
	^ self ffiCall: #(void glutin_events_loop_free_events(void* aBuffer))
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primGetPrimaryMonitor [
	^ self ffiCall: #(GlutinMonitorId glutin_events_loop_get_primary_monitor (GlutinEventsLoop self))
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primRunForever: aCallback [
	^ self ffiCall: #(void glutin_events_loop_run_forever(GlutinEventsLoop self, GlutinEventCallback aCallback))
]

{ #category : #accessing }
GlutinEventsLoop >> primaryMonitor [
	<return: #GlutinMonitorId>
	| aMonitorId |
	
	aMonitorId := self primGetPrimaryMonitor.
	aMonitorId autoRelease.
	aMonitorId eventsLoop: self.
	
	^ aMonitorId
]

{ #category : #events }
GlutinEventsLoop >> run: aBlock [
	| aCallback |

	self isNull
		ifTrue: [ ^ self ].

	aCallback := GlutinEventCallback on: [ :anAddress |
		aBlock value: (GlutinBaseEvent fromHandle: anAddress).
		GlutinControlFlow Poll ].
	self primRunForever: aCallback
]
