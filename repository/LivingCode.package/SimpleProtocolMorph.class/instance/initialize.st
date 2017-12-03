initialization
initialize

	super initialize.
	self
		changeTableLayout;
		color: Color gray muchLighter;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		"width: 250;"
		layoutInset: 20@0.
	headerMorph := Morph new
		changeTableLayout;
		beTransparent;
		hResizing: #spaceFill;
		cellInset: 20@0;
		listDirection: #leftToRight;
		yourself.

	isExpanded := true.
	toggleMorph := ImageMorph new.
	self toggleExpansion.
	toggleMorph on: #mouseUp send: #toggleExpansion to: self.

	titleMorph := '' asText asMorph
		textColor: Color black;
		yourself.
	headerMorph
		addMorphBack: toggleMorph;
		addMorphBack: titleMorph.
	self addMorphBack: headerMorph.