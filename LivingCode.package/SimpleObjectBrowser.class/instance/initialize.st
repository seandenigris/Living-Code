initialization
initialize

	| textMorph |
	super initialize.
	self
		layoutPolicy: TableLayout new;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		addMorphBack: 'Open object browser on: ' asMorph;
		addMorphBack: (SimpleObjectBrowserTextMorph new).
	