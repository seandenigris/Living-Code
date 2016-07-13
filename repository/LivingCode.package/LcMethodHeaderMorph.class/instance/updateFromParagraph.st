initialization
updateFromParagraph

	super updateFromParagraph.
	self template handleHeaderChange: self contents asString.