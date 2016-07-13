initialization
initializeWidgets

	| radarButton |
	self title: 'Self World'.
	browserModel := self instantiate: LcSpecBrowser.
	toolbarModel := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		asSpecAdapter.
	worldModel := ScrollableWorldMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		asSpecAdapter.
	radarButton := ButtonModel new
		action: [ worldModel morph openRadar ];
		icon: RadarMorph icon;
		buildWithSpec.
	radarButton
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	toolbarModel morph addMorph: radarButton.
	self focusOrder add: browserModel.