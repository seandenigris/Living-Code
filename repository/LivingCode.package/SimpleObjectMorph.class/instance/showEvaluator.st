actions
showEvaluator

	| evaluator |
	evaluator := self newEvaluator.
	self addMorphBack: evaluator buildWithSpec.
	evaluator takeKeyboardFocus.