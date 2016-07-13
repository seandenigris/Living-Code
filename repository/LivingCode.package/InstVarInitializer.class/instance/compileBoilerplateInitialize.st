private
compileBoilerplateInitialize

	self containerClass
		compile: 'initialize<n><n><t>super initialize.' expandMacros
		classified: 'initialization'