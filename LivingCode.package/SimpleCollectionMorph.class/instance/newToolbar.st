private - building
newToolbar

	| builder evaluatorButton |
	builder := UITheme builder.
	evaluatorButton := builder newButtonFor: self action: #showEvaluator label: 'E' help: 'Show evaluator'.
	^ builder newRow: { evaluatorButton }.