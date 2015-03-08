as yet unclassified
basicExecute

	(self containerClass includesSelector: #initialize) ifFalse: [ self compileBoilerplateInitialize ].
	self addInitializationStatement.
	self initializeInstances.