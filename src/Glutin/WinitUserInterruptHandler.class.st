Class {
	#name : #WinitUserInterruptHandler,
	#superclass : #RustWindowingUserInterruptHandler,
	#category : #'Glutin-Event fetcher'
}

{ #category : #'as yet unclassified' }
WinitUserInterruptHandler >> defaultInterruptCombinations [
	^ {
		"mac"
		{WinitEventVirtualKeyCode LWin.
			WinitEventVirtualKeyCode Period} asSet.
		"windows, linux"
		{WinitEventVirtualKeyCode LControl.
			WinitEventVirtualKeyCode Period} asSet}
]
