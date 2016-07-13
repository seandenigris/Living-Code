as yet unclassified
initializeSubmorphs

	| spacerMorph button |
	nameMorph := '' asMorph.
	spacerMorph := Morph new
		beTransparent;
		minWidth: 100;
		hResizing: #spaceFill;
		yourself.
	valueMorph := '' asMorph.
	button := UITheme current builder newButtonFor: self action: #show label: '=' help: nil.
	button width: 36. "We tried shrink wrapping, but then the buttons are all different sizes and don't line up nicely vertically. So this is a compromise in that = buttons look a little too wide, and ++ buttons look a little too narrow. If we took the time to display the ++ in the label stacked vertically, the situation would be better"
	self
		addMorphBack: nameMorph;
		addMorphBack: spacerMorph;
		addMorphBack: valueMorph;
		addMorphBack: button.