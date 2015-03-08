testing
appliesToDebugger: aDebugger

	| ast |
	ast := RBParser parseMethod: aDebugger code text.
	^ ast selector isKeyword and: [ ast numArgs = 1 ].