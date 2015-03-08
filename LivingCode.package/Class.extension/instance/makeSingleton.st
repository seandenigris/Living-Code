*LivingCode
makeSingleton

	| accessorSource |
	accessorSource := 'uniqueInstance

	^ uniqueInstance ifNil: [ uniqueInstance := self new ].'.
	self class
		addInstVarNamed: 'uniqueInstance';
		compile: accessorSource classified: 'instance creation'.