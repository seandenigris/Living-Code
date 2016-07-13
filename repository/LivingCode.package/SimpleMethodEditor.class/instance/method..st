accessing
method: anObject
	method := anObject.
	self text
		text: method sourceCode;
		behavior: method methodClass