morphic
asMorph

	| morph |
	morph := PluggableTextMorph
		on: self
		text: #getText
		accept: #accept:notifying:.
		
	 ^ morph
		classOrMetaClass: object class;
		color: Color white;
		hResizing: #spaceFill;
		yourself.