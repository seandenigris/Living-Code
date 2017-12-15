initialization
getIt
		
	| result morph pluggableTextMorph |
	self text accept.
	pluggableTextMorph := self text widget widget.
	"The next line is adapted from PluggableTextMorph>>#exploreIt. I don't know how it works, and I don't want to know ;)"
	result := pluggableTextMorph textMorph editor evaluateSelection.
	morph := SimpleObjectMorph on: result.
	morph openInHand.