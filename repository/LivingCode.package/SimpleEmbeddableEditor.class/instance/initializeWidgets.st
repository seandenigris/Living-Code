as yet unclassified
initializeWidgets
	
	text := self newText
		aboutToStyle: true;
		yourself.
	
	yankOutButton := self newButton
		label: 'Yank out';
		action: [ self yankOut ].
	
	closeButton := self newButton
		label: 'Close';
		action: [ self widget delete ].