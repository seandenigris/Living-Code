as yet unclassified
acceptContents

	| object |
	object := Compiler evaluate: self contents asString.
	object lcPickUp.
	self contents: ''.