initialization
initializeWidgets
	
	super initializeWidgets.
	self text acceptBlock: [ :newSource | self accept: newSource ].