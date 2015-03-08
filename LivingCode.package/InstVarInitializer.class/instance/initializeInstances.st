private
initializeInstances

	self containerClass allSubInstancesDo: [ :e | | value |
		value := Compiler evaluate: expressionString.
		e instVarNamed: self instVarName asSymbol put: value ].