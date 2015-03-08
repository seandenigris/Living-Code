model access
model: anImplementorsBubble 

	| styler |
	self editor model: anImplementorsBubble.
	self contents: model contents.
	
	styler := SHTextStylerST80 new
		view: self.
		
	self styler: styler.