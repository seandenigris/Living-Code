initialization
initialize

	super initialize.
	self whenBuiltDo: [ | tm |
		tm := self widget widget.
		tm announcer when: RubReturnEntered send: #acceptText to: self ]