private
addInitializationStatement

	| initializeMethod ast |
	initializeMethod := self containerClass>>#initialize.
	ast := initializeMethod parseTree.
	ast addNode: (RBExplicitVariableParser parseExpression: self instVarName, ' := ', expressionString).
	self containerClass compile: ast newSource.
