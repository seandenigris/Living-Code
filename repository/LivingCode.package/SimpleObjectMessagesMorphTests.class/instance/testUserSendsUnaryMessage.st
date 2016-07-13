as yet unclassified
testUserSendsUnaryMessage

	| messageList messageMorph inspectorsOnResult |
	messageList := SimpleObjectMessagesMorph openOn: Character.
	messageMorph := messageList morphForMessage: #lf.
	
	messageMorph simulateClick.
	
	inspectorsOnResult := World submorphs select: [ :m | [ m isKindOf: SystemWindow ] andAllOf: [ m model class = Inspector ], [ m model object = Character lf ] ].
	inspectorsOnResult size should = 1.
	
	inspectorsOnResult first delete.
	messageList delete.