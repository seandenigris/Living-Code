as yet unclassified
acceptDroppingMorph: aMorph event: anEvent

	| anchor placeholder |
	anchor := TextAnchor new anchoredMorph: aMorph.
	placeholder := (Character value: 1) asText
		addAttribute: anchor;
		yourself.
	self contents: self contents, placeholder.
	self layoutChanged