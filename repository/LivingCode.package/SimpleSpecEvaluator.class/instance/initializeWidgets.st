initialization
initializeWidgets
	
	text := self newText
		beForCode;
		text: 'self ';
		yourself.
	getItButton := self newButton
		label: 'Get It';
		action: [ self getIt ].
	yankOutButton := self newButton
		label: 'Yank out';
		action: [ self yankOut ].
	closeButton := self newButton
		label: 'Close';
		action: [ self widget delete ].