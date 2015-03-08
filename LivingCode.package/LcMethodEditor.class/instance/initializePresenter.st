initialization
initializePresenter

	selectorModel whenTextIsAccepted: [
		commentModel takeKeyboardFocus ].
	commentModel whenTextIsAccepted: [ 
		bodyModel
			setSelection: (2 to: 1);
			takeKeyboardFocus ].
	bodyModel whenTextIsAccepted: [ self window triggerOkAction ].