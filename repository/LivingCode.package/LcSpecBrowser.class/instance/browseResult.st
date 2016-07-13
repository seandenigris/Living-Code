private
browseResult

	| object |
	object := Compiler evaluate: self pendingText asString.
	self openObject: object.
	self pendingText: ''.