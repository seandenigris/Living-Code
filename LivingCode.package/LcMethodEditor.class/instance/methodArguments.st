private
methodArguments

	| parseTree |
	parseTree := RBExplicitVariableParser parseMethod: selectorModel text onError: [ :msg :pos | ^ #() ].
	^ parseTree
		ifNil: [ #() ]
		ifNotNil: [ :tree | tree argumentNames ].