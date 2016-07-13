as yet unclassified
morph

	| builder label |
	builder := UITheme builder.
	label := builder newLabel: instanceVariable name.
	listMorph := builder newDropListFor: list
		list: #list
		getSelected: #selectionIndex
		setSelected: #selectionIndex:
		help: ''.
	^ builder newRow: { label. listMorph }.