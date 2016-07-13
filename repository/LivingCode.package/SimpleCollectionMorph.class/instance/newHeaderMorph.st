private - building
newHeaderMorph
	^ Morph new
		beTransparent;
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight