as yet unclassified
execute

	expressionString := UIManager default request: 'Initialization statement for ', self instVarName.
	expressionString isNil ifFalse: [ self basicExecute ].