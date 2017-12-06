private
browseResult

	| object |
	object := Compiler evaluate: self pendingText asString.
	object lcPickUp.
	self pendingText: ''.