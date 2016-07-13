as yet unclassified
initialize

	super initialize.
	self crAction: [ self acceptContents ].
	self takeKeyboardFocus
