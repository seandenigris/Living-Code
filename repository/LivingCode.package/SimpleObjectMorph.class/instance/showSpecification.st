actions
showSpecification
	| specClassName |
	specClassName := object className , 'Specification'.
	Smalltalk globals
		at: specClassName asSymbol
		ifPresent: [ :c | c browse ]
		ifAbsent: [ UIManager default inform: 'No specification class!' ]