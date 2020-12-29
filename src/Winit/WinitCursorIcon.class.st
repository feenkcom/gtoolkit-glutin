Class {
	#name : #WinitCursorIcon,
	#superclass : #WinitEnum,
	#classVars : [
		'Alias',
		'AllScroll',
		'Arrow',
		'Cell',
		'ColResize',
		'ContextMenu',
		'Copy',
		'Crosshair',
		'Default',
		'EResize',
		'EwResize',
		'Grab',
		'Grabbing',
		'Hand',
		'Help',
		'Move',
		'NResize',
		'NeResize',
		'NeswResize',
		'NoDrop',
		'NotAllowed',
		'NsResize',
		'NwResize',
		'NwseResize',
		'Progress',
		'RowResize',
		'SResize',
		'SeResize',
		'SwResize',
		'Text',
		'VerticalText',
		'WResize',
		'Wait',
		'ZoomIn',
		'ZoomOut'
	],
	#category : #'Winit-Enums'
}

{ #category : #'accessing enum' }
WinitCursorIcon class >> Alias [
	"This method was automatically generated"
	^ Alias
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> AllScroll [
	"This method was automatically generated"
	^ AllScroll
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Arrow [
	"This method was automatically generated"
	^ Arrow
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Cell [
	"This method was automatically generated"
	^ Cell
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> ColResize [
	"This method was automatically generated"
	^ ColResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> ContextMenu [
	"This method was automatically generated"
	^ ContextMenu
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Copy [
	"This method was automatically generated"
	^ Copy
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Crosshair [
	"This method was automatically generated"
	^ Crosshair
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Default [
	"This method was automatically generated"
	^ Default
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> EResize [
	"This method was automatically generated"
	^ EResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> EwResize [
	"This method was automatically generated"
	^ EwResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Grab [
	"This method was automatically generated"
	^ Grab
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Grabbing [
	"This method was automatically generated"
	^ Grabbing
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Hand [
	"This method was automatically generated"
	^ Hand
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Help [
	"This method was automatically generated"
	^ Help
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Move [
	"This method was automatically generated"
	^ Move
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> NResize [
	"This method was automatically generated"
	^ NResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> NeResize [
	"This method was automatically generated"
	^ NeResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> NeswResize [
	"This method was automatically generated"
	^ NeswResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> NoDrop [
	"This method was automatically generated"
	^ NoDrop
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> NotAllowed [
	"This method was automatically generated"
	^ NotAllowed
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> NsResize [
	"This method was automatically generated"
	^ NsResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> NwResize [
	"This method was automatically generated"
	^ NwResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> NwseResize [
	"This method was automatically generated"
	^ NwseResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Progress [
	"This method was automatically generated"
	^ Progress
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> RowResize [
	"This method was automatically generated"
	^ RowResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> SResize [
	"This method was automatically generated"
	^ SResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> SeResize [
	"This method was automatically generated"
	^ SeResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> SwResize [
	"This method was automatically generated"
	^ SwResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Text [
	"This method was automatically generated"
	^ Text
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> VerticalText [
	"This method was automatically generated"
	^ VerticalText
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> WResize [
	"This method was automatically generated"
	^ WResize
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> Wait [
	"This method was automatically generated"
	^ Wait
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> ZoomIn [
	"This method was automatically generated"
	^ ZoomIn
]

{ #category : #'accessing enum' }
WinitCursorIcon class >> ZoomOut [
	"This method was automatically generated"
	^ ZoomOut
]

{ #category : #'enum declaration' }
WinitCursorIcon class >> externalDeclaration [
	"
	self rebuildEnumAccessors
	"

	^ #(
	 "The platform-dependent default cursor."
    Default,
    "A simple crosshair."
    Crosshair,
    "A hand (often used to indicate links in web browsers)."
    Hand,
    "Self explanatory."
    Arrow,
    "Indicates something is to be moved."
    Move,
    "Indicates text that may be selected or edited."
    Text,
    "Program busy indicator."
    Wait,
    "Help indicator (often rendered as a ?)"
    Help,
    "Progress indicator. Shows that processing is being done. But in contrast
    with `Wait` the user may still interact with the program. Often rendered
    as a spinning beach ball, or an arrow with a watch or hourglass."
    Progress,

    "Cursor showing that something cannot be done."
    NotAllowed,
    ContextMenu,
    Cell,
    VerticalText,
    Alias,
    Copy,
    NoDrop,
    Grab,
    Grabbing,
    AllScroll,
    ZoomIn,
    ZoomOut,

    "Indicate that some edge is to be moved. For example, the `SeResize` cursor
    is used when the movement starts from the south-east corner of the box."
    EResize,
    NResize,
    NeResize,
    NwResize,
    SResize,
    SeResize,
    SwResize,
    WResize,
    EwResize,
    NsResize,
    NeswResize,
    NwseResize,
    ColResize,
    RowResize,
	)
]

{ #category : #'enum declaration' }
WinitCursorIcon class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
WinitCursorIcon class >> initialize [
	super initialize
]
