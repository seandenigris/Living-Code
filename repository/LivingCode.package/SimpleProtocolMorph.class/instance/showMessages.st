private - actions
showMessages

	| selectors container scrollPane newHeight |
"	self vResizing: #rigid."
	container := Morph new
	    changeTableLayout;
	    hResizing: #shrinkWrap;
	    vResizing: #shrinkWrap;
		beTransparent;
		cellPositioning: #topLeft;
		yourself.
	selectors := object class selectorsInProtocol: title.
	selectors do: [ :sel | | methodMorph |
		methodMorph := SimpleMessageMorph sending: sel to: object.
		container addMorphBack: methodMorph ].
	"scrollPane := GeneralScrollPane new
        scrollTarget: container;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
        yourself."
	self addMorphBack: container.
"	newHeight := self fullHeight min: 500.
	self height: newHeight."