private
sendMessage

	| result morph |
	self flag: 'isKindOf: is a hack for a demo'.
	result := object perform: selector withArguments: self arguments.
	morph := (result isKindOf: Collection)
		ifTrue: [ SimpleCollectionMorph on: result ]
		ifFalse: [ SimpleObjectMorph on: result ].
	morph openInHand.