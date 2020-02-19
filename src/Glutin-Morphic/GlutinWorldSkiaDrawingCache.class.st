Class {
	#name : #GlutinWorldSkiaDrawingCache,
	#superclass : #Object,
	#instVars : [
		'morph',
		'extent',
		'canvas',
		'damage',
		'form',
		'isValid'
	],
	#category : #'Glutin-Morphic'
}

{ #category : #'instance creation' }
GlutinWorldSkiaDrawingCache class >> forMorph: aMorph [
	^ self new initializeForMorph: aMorph
]

{ #category : #accessing }
GlutinWorldSkiaDrawingCache >> canvas [
	^ canvas
]

{ #category : #accessing }
GlutinWorldSkiaDrawingCache >> canvas: aCanvas [
	canvas := aCanvas.
	
	extent := canvas extent
]

{ #category : #accessing }
GlutinWorldSkiaDrawingCache >> extent [
	^ extent
]

{ #category : #initialization }
GlutinWorldSkiaDrawingCache >> initializeForMorph: aMorph [
	morph := aMorph.	
	extent := morph extent ceiling asIntegerPoint.
	isValid := false
]

{ #category : #'change reporting' }
GlutinWorldSkiaDrawingCache >> invalidRect: aRectangle [
	damage := damage
		ifNil: [ aRectangle ]
		ifNotNil: [ damage quickMerge: aRectangle ].
		
	isValid := false
]

{ #category : #accessing }
GlutinWorldSkiaDrawingCache >> isValid [
	^ isValid
]

{ #category : #accessing }
GlutinWorldSkiaDrawingCache >> morph [
	^ morph
]

{ #category : #accessing }
GlutinWorldSkiaDrawingCache >> morph: anObject [
	morph := anObject
]

{ #category : #private }
GlutinWorldSkiaDrawingCache >> updateCache [
	| aDamagedRect aFullBounds |

	self isValid
		ifTrue: [ ^ self ].

	aFullBounds := morph fullBounds.
	aDamagedRect := (damage ifNil: [ aFullBounds ])
		intersect: aFullBounds
		ifNone: [ ^ self ].

	form := morph imageFormForRectangle: aDamagedRect.

	canvas fill
		paint: form;
		path: (aDamagedRect origin - aFullBounds origin extent: form extent);
		composeSource;
		antialiasNone;
		draw.

	isValid := true.
	damage := nil
]
