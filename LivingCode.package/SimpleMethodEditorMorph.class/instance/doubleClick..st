as yet unclassified
doubleClick: anEvent
	"Only gets called first time morph gets focused (I think the text morph takes over then)"

	self halt.
	"self addMorph: "(BubbleMorph 
	openOn: #currentWorld;
	topLeft: self topRight + 50).