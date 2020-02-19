Class {
	#name : #GlutinWorldSkiaRenderer,
	#superclass : #GlutinWorldRenderer,
	#instVars : [
		'invalidMetalink',
		'drawingCache',
		'skiaCanvas'
	],
	#category : #'Glutin-Morphic-Skia'
}

{ #category : #accessing }
GlutinWorldSkiaRenderer class >> isApplicableFor: aWorld [
	^ Smalltalk isHeadless
		and: [ CommandLineArguments new hasOption: 'interactive' ]
]

{ #category : #accessing }
GlutinWorldSkiaRenderer class >> priority [ 

	^ 25
]

{ #category : #accessing }
GlutinWorldSkiaRenderer >> canvas [
	^ nil
]

{ #category : #'api - cycle' }
GlutinWorldSkiaRenderer >> checkForNewScreenSize [
	<return: #Boolean>	

	super checkForNewScreenSize
		ifFalse: [ ^ false ].
	
	skiaCanvas := self createSkiaCanvas.
	
	^ true
]

{ #category : #'private - drawing cache' }
GlutinWorldSkiaRenderer >> createDrawingCache: aMorph [
	<return: #GlutinWorldSkiaDrawingCache>
	| aCache |

	aCache := (GlutinWorldSkiaDrawingCache forMorph: aMorph).
	aCache canvas: (skiaCanvas similar: aCache extent).
	"aCache canvas: (SkiaCanvas extent: aCache extent)."

	^ aCache
]

{ #category : #'private - drawing' }
GlutinWorldSkiaRenderer >> createSkiaCanvas [
	<return: #SkiaCanvas>
	| aPixelFormat aSkiaBackendRenderTarget |

	aPixelFormat := glutinWindow pixelFormat.
	
	aSkiaBackendRenderTarget := SkiaBackendRenderTarget
		newGlExtent: glutinWindow innerExtent
		sampleCount: aPixelFormat multisapling
		stencilBits: aPixelFormat stencilBits
		framebufferId: 0
		framebufferFormat: GtGleamGL GL_RGBA8 value.

	^ SkiaCanvas
		createFromRenderTarget: aSkiaBackendRenderTarget
		format: SkiaColorType RGBA8888
]

{ #category : #activation }
GlutinWorldSkiaRenderer >> deactivate [
	super deactivate.

	self uninstallInvalidationMetalinkOn: world
]

{ #category : #'api - cycle' }
GlutinWorldSkiaRenderer >> displayWorldState: aWorldState ofWorld: aWorld submorphs: submorphs [
	"Update this world's display."
	
	glutinWindow
		ifNil: [ ^ self ].
	
	skiaCanvas
		ifNil: [ ^ self ].

	"force re-layout if needed"
	submorphs do: [ :m | m fullBounds ].
	
	aWorldState checkIfUpdateNeeded
		ifFalse: [ ^ self ].
	
	Glutin critical: [
		| theMorphsToRender |
		
		glutinWindow makeCurrent.
		
		theMorphsToRender := (aWorld hands flatCollect: #submorphs), submorphs.
		
		theMorphsToRender reverseDo: [ :eachMorph | self renderMorph: eachMorph ].
		
		skiaCanvas fill
			path: skiaCanvas bounds;
			paint: aWorld color;
			draw.
		
		skiaCanvas transform
			by: [ :t | t scaleBy: scaleFactor asPoint ]
			during: [
				theMorphsToRender reverseDo: [ :eachMorph |
					| aFullBlounds |
					
					aFullBlounds := eachMorph fullBounds.
					
					drawingCache
						at: eachMorph
						ifPresent: [ :eachCache |
							skiaCanvas fill
								path: (aFullBlounds origin extent: eachCache extent);
								paint: eachCache canvas;
								antialiasNone;
								draw ] ] ].

		skiaCanvas flush.
		glutinWindow swapBuffers ].

	aWorldState damageRecorder reset
]

{ #category : #activation }
GlutinWorldSkiaRenderer >> doActivate [	
	super doActivate.

	skiaCanvas := self createSkiaCanvas.	
	self installInvalidationMetalinkOn: world
]

{ #category : #initialization }
GlutinWorldSkiaRenderer >> initialize [
	super initialize.

	drawingCache := IdentityDictionary new.
	skiaCanvas := nil
]

{ #category : #'private - drawing cache' }
GlutinWorldSkiaRenderer >> installInvalidationMetalinkOn: aWorldMorph [
	invalidMetalink := MetaLink new.
	invalidMetalink selector: #invalidWorld:.
	invalidMetalink metaObject: self.
	invalidMetalink arguments: #(#arguments).
	(aWorldMorph class >> #invalidRect:from:) ast link: invalidMetalink forObject: aWorldMorph.
]

{ #category : #'private - drawing cache' }
GlutinWorldSkiaRenderer >> invalidDrawingCache: aMorph rect: aRectangle [
	drawingCache
		at: aMorph
		ifPresent: [ :aCache | aCache invalidRect: aRectangle ]
]

{ #category : #'private - drawing cache' }
GlutinWorldSkiaRenderer >> invalidRect: aRectangle from: aMorph [
	| myChild |

	aMorph == world
		ifTrue: [ ^ self ].

	myChild := aMorph.
	
	[ myChild isNotNil and: [ myChild owner ~~ world ] ]
		whileTrue: [ myChild := myChild owner ].

	myChild owner == world
		ifTrue: [ self invalidDrawingCache: myChild rect: aRectangle ]
]

{ #category : #'private - drawing cache' }
GlutinWorldSkiaRenderer >> invalidWorld: aCollectionOfArguments [
	self
		invalidRect: aCollectionOfArguments first
		from: aCollectionOfArguments second
]

{ #category : #'private - drawing' }
GlutinWorldSkiaRenderer >> renderMorph: aMorph [
	| aDrawingCache |
	
	aDrawingCache := drawingCache
		at: aMorph
		ifAbsentPut: [ self createDrawingCache: aMorph ].

	aMorph extent = aDrawingCache extent
		ifFalse: [
			aDrawingCache := self createDrawingCache: aMorph.
			drawingCache at: aMorph put: aDrawingCache ].

	aDrawingCache updateCache
]

{ #category : #'private - drawing cache' }
GlutinWorldSkiaRenderer >> uninstallInvalidationMetalinkOn: aWorldMorph [
	invalidMetalink uninstall
]
