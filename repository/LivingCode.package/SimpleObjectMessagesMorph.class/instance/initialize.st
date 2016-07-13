as yet unclassified
initialize

	super initialize.
	self
		layoutPolicy: TableLayout new;
		layoutInset: (8@2 corner: 8@2);
		rubberBandCells: true;
		color: Color veryLightGray;
		cellPositioning: #topLeft;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		fillStyle: self fillStyle;
		borderStyle: BorderStyle thinGray;
		cornerStyle: #rounded