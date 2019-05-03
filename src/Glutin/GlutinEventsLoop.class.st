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

{ #category : #'instance creation' }
GlutinEventsLoop class >> new [
	^ self create
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

{ #category : #events }
GlutinEventsLoop >> fetchEvents: aBlock [
	| theEventsBuffer theEvents filteredEvents |

	self isNull
		ifTrue: [ ^ self ].

	theEventsBuffer := GlutinFetchedEvents fromHandle: self primCreateFetchedEvents getHandle.
	self primFetchEvents: theEventsBuffer getHandle.
	
	theEventsBuffer length isZero
		ifTrue: [
			self primFreeEvents: theEventsBuffer.
			^ self ].
		
	theEvents := FFIExternalArray
		fromHandle: theEventsBuffer data getHandle
		type: GlutinBaseEvent
		size: theEventsBuffer length.
		
	filteredEvents := self filteredEvents: theEvents asArray.
	filteredEvents do: [ :anEvent | aBlock value: anEvent ].
	
	self primFreeEvents: theEventsBuffer
]

{ #category : #private }
GlutinEventsLoop >> filteredEvents: theEvents [
	"Filter unnecessary duplicated events that we don't have to process within same frame,
	for example window resize event, window refresh events and mouse move events"
	| groupedByWindow |
	
	groupedByWindow := theEvents groupedBy: [ :anEvent | anEvent window_id asInteger ].
	groupedByWindow := groupedByWindow collect: [ :aCollectionOfEvents |
		| groupedByEventType |
		groupedByEventType := aCollectionOfEvents groupedBy: [ :anEvent | anEvent event_type ].
		self uniqueEventTypes do: [ :anEventType |
			groupedByEventType
				at: anEventType
				ifPresent: [ :theEventsOfEachType |
					groupedByEventType
						at: anEventType
						put: ({ theEventsOfEachType last }) ] ].	
		groupedByEventType values ].
	^ groupedByWindow values flattened
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
	^ self ffiCall: #(void glutin_events_loop_free_events(GlutinFetchedEvents aBuffer))
]

{ #category : #'private - ffi' }
GlutinEventsLoop >> primGetPrimaryMonitor [
	^ self ffiCall: #(GlutinMonitorId glutin_events_loop_get_primary_monitor (GlutinEventsLoop self))
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

{ #category : #private }
GlutinEventsLoop >> uniqueEventTypes [
	"Types of events that should be unique per frame.
	e.g. We don't need multiple window resize or refresh events"
	^ {
		WinitEventType WindowEventResized.
		WinitEventType WindowEventRefresh.
		WinitEventType WindowEventCursorMoved.
		WinitEventType WindowEventMoved
	}
]
