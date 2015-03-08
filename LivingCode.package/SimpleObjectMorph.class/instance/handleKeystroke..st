event handling
handleKeystroke: anEvent

	(anEvent keyCharacter = $m) ifTrue: [ self showUnderstoodMessages ].
	(anEvent keyCharacter = $b) ifTrue: [ self browse ].
	(anEvent keyCharacter = $i) ifTrue: [ self inspect ].
	(anEvent keyCharacter = $e) ifTrue: [ self explore ].