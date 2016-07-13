as yet unclassified
hasBindingThatBeginsWith: aString
	^ self bindings anySatisfy: [:s | s beginsWith: aString]
