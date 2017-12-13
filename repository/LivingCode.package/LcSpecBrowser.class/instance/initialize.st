initialization
initialize

	super initialize.
	self
		beForCode;
		whenBuiltDo: [ | tm |
			tm := self widget widget.
			tm announcer when: RubReturnEntered send: #acceptText to: self ]