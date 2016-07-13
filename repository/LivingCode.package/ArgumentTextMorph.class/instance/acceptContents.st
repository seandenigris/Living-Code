as yet unclassified
acceptContents

	| result morph |
	result := self target perform: self selector with: self argument.
	morph := SimpleObjectMorph on: result.
	morph openInHand.
	self contents: ''.