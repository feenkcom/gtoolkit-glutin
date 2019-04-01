Class {
	#name : #OSGlutinWindowExamples,
	#superclass : #Object,
	#category : #'OSWindow-Glutin-Examples'
}

{ #category : #examples }
OSGlutinWindowExamples >> osGlutinWindow [
	<gtExample>	
	| aWindow |

	aWindow := OSWindow createWithAttributes: (OSWindowAttributes new
		preferableDriver: OSGlutinDriver new;
		title: 'OSWindow').
		
	^ aWindow
]
