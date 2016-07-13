initialize-release
addTitle
	
	| title |
	title := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		cellInset: 10;
		
		addMorphBack: (GrowableTextMorph
			new contents: 'aClass';
			selectAll);
		addMorphBack: 'Specification' asMorph.
		
	self addMorph: title.