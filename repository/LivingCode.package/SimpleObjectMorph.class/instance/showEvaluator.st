actions
showEvaluator

	| evaluator morph |
	evaluator := self newEvaluator.
	morph := evaluator buildWithSpec
		vResizing: #rigid;
		yourself.
	self addMorphBack: morph.
	evaluator takeKeyboardFocus.