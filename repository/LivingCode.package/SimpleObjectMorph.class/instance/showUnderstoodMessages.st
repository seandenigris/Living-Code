actions
showUnderstoodMessages

	| messageList |
	messageList := SimpleObjectMessagesMorph on: self object.
	messageList
		center: self center;
		left: self right + 20.
	self selfWorld
		addMorph: messageList;
		addMorph: (DirectionalConnector connect: self to: messageList).