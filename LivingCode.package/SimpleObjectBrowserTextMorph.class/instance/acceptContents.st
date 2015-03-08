as yet unclassified
acceptContents

	| object |
	object := Compiler evaluate: self contents asString.
	self openObject: object.
	self contents: ''.