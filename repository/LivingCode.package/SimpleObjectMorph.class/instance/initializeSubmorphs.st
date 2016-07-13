private - initialization
initializeSubmorphs
	| spacerMorph |
	titleMorph := self newTitleMorph.
	headerMorph := self newHeaderMorph.
	spacerMorph := Morph new
		hResizing: #spaceFill;
		beTransparent;
		yourself.
	headerMorph
		addMorphBack: titleMorph;
		addMorphBack: self newCommentButton;
		addMorphBack: spacerMorph;
		addMorphBack: self newToolbar.
	self addMorphBack: headerMorph.