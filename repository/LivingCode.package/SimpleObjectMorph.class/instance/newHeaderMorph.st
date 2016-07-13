private - building
newHeaderMorph
	^ Morph new
		beTransparent;
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 5@0;
		listDirection: #leftToRight