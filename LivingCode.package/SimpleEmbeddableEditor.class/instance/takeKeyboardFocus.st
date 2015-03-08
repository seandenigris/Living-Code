private-focus
takeKeyboardFocus

	self text
		setSelection: (self text text size + 1 to: self text text size);
		takeKeyboardFocus.