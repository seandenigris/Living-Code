as yet unclassified
addInitializerTo: aClass

	"aClass addSelector: #initialize withMethod: ."
	aClass
		compile: ('<1s><n><n><t>super initialize.' expandMacrosWith: #initialize) 
		classified: 'initialization'.
	ToolSet browse: aClass selector: #initialize.