Class {
	#name : #GlutinCursorIcon,
	#superclass : #GlutinEnum,
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
	#category : #'Glutin-Enums'
}

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Alias [
	"This method was automatically generated"
	^ Alias
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> AllScroll [
	"This method was automatically generated"
	^ AllScroll
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Arrow [
	"This method was automatically generated"
	^ Arrow
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Cell [
	"This method was automatically generated"
	^ Cell
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> ColResize [
	"This method was automatically generated"
	^ ColResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> ContextMenu [
	"This method was automatically generated"
	^ ContextMenu
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Copy [
	"This method was automatically generated"
	^ Copy
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Crosshair [
	"This method was automatically generated"
	^ Crosshair
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Default [
	"This method was automatically generated"
	^ Default
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> EResize [
	"This method was automatically generated"
	^ EResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> EwResize [
	"This method was automatically generated"
	^ EwResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Grab [
	"This method was automatically generated"
	^ Grab
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Grabbing [
	"This method was automatically generated"
	^ Grabbing
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Hand [
	"This method was automatically generated"
	^ Hand
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Help [
	"This method was automatically generated"
	^ Help
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Move [
	"This method was automatically generated"
	^ Move
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> NResize [
	"This method was automatically generated"
	^ NResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> NeResize [
	"This method was automatically generated"
	^ NeResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> NeswResize [
	"This method was automatically generated"
	^ NeswResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> NoDrop [
	"This method was automatically generated"
	^ NoDrop
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> NotAllowed [
	"This method was automatically generated"
	^ NotAllowed
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> NsResize [
	"This method was automatically generated"
	^ NsResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> NwResize [
	"This method was automatically generated"
	^ NwResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> NwseResize [
	"This method was automatically generated"
	^ NwseResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Progress [
	"This method was automatically generated"
	^ Progress
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> RowResize [
	"This method was automatically generated"
	^ RowResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> SResize [
	"This method was automatically generated"
	^ SResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> SeResize [
	"This method was automatically generated"
	^ SeResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> SwResize [
	"This method was automatically generated"
	^ SwResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Text [
	"This method was automatically generated"
	^ Text
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> VerticalText [
	"This method was automatically generated"
	^ VerticalText
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> WResize [
	"This method was automatically generated"
	^ WResize
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> Wait [
	"This method was automatically generated"
	^ Wait
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> ZoomIn [
	"This method was automatically generated"
	^ ZoomIn
]

{ #category : #'accessing enum' }
GlutinCursorIcon class >> ZoomOut [
	"This method was automatically generated"
	^ ZoomOut
]

{ #category : #'enum declaration' }
GlutinCursorIcon class >> externalDeclaration [
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
GlutinCursorIcon class >> externalType [
	^ FFIUInt32 new
]

{ #category : #'class initialization' }
GlutinCursorIcon class >> initialize [
	super initialize
]
