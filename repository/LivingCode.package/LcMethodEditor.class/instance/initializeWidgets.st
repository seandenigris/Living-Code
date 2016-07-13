initialization
initializeWidgets
	
	selectorModel := self newText "would be more natural as a newTextInput, but they do not get styled"
		behavior: self modelClass;
		"autoAccept: true;"
		aboutToStyle: true;
		yourself.
	commentModel := self newText
		"autoAccept: true;" "autoAccept broken in TextModels issue 12723"
		aboutToStyle: true;
		"text: self initialComment;"
		yourself.
	bodyModel := self newText
		text: '	';
		aboutToStyle: true;
		"behavior: self modelClass" "can't use this because Shout expects a method header first"
		"doItReceiver: self modelClass;"
		yourself.
		
	self whenBuiltDo: [ 
		self initializeSyntaxHighlighting.
		selectorModel widget widget acceptOnCR: true ].
	
	self focusOrder
		add: selectorModel;
		add: commentModel;
		add: bodyModel.