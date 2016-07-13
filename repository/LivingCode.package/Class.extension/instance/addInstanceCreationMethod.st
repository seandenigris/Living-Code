*LivingCode
addInstanceCreationMethod

	| header |
	header := UIManager default request: 'Please enter method header...'.
	self class
		compile: ('<1s><n><n><t>"self set."' expandMacrosWith: header) 
		classified: 'instance creation'.
	ToolSet browse: self class selector: header findSelector.