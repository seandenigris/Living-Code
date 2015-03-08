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
	slotMorph := self newMorphForSlotNamed: 'class'.
	slotMorph beConstant.
	packageSlotMorph := self newMorphForSlotNamed: 'package'.
	packageSlotMorph beAssignable.
	self
		addMorphBack: headerMorph;
		addMorphBack: slotMorph;
		addMorphBack: packageSlotMorph.