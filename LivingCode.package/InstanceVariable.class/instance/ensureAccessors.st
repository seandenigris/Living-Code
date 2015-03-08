as yet unclassified
ensureAccessors

	| refactoring |
	refactoring := RBCreateAccessorsForVariableRefactoring 
			model: nil
			variable: name
			class: class
			classVariable: false.	
	refactoring execute.