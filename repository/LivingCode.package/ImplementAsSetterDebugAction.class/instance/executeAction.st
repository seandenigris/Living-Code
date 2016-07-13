actions
executeAction

	| ast assignment instVarName |
	ast := RBParser parseMethod: self debugger code text.
	instVarName := ast selector allButLast.
	assignment := instVarName, ' := ', ast argumentNames first.
	ast body statements: { RBParser parseExpression: assignment }.
	self currentContext methodClass addInstVarNamed: instVarName.
	self debugger code
		text: ast newSource;
		hasUnacceptedEdits: true;
		accept.