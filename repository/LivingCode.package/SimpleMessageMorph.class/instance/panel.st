private
panel

	toolbar ifNotNil: [ ^ toolbar ].
	^ toolbar := PanelMorph new
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 5@0;
		yourself.