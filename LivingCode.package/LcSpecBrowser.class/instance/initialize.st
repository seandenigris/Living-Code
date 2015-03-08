initialization
initialize

	super initialize.
	self whenBuiltDo: [ | tm |
		tm := self widget widget.
		tm acceptOnCR: true.
		tm acceptAction: [ :text |
			self browseResult.
			self reset ] ]