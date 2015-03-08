initialization
acceptContents
	"UGLY!!! YUCK!!! Please change me, I hurt"

	| privateMethodHeader |
	self owner owner object class
		compile: ('<1s><n><n><t><2s>.' expandMacrosWithArguments: { self contents asString. self submorphAfter contents asString})
		classified: 'instance creation'.

	privateMethodHeader := self submorphAfter contents asString allButFirst: 11.
	self owner owner object
		compile: privateMethodHeader
		classified: 'private'.
		
"	ToolSet browse: self owner owner object selector: privateMethodHeader findSelector."
	
	self owner delete.