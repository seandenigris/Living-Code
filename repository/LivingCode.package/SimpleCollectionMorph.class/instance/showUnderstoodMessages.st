private
showUnderstoodMessages

	| messageList |
	messageList := SimpleObjectMessagesMorph openOn: self object.
	messageList
		center: self center;
		left: self right + 20.
	(DirectionalConnector connect: self to: messageList) openInWorld.