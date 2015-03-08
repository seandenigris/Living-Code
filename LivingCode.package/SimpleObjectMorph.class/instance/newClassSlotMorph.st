private - initialization
newClassSlotMorph
		
	| result |
	result := SimpleSlotMorph slot: 'class' in: self object equals: nil.
	^ result
		beTransparent;
		hResizing: #spaceFill;
		yourself.