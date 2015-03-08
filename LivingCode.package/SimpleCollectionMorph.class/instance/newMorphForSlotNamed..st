private - initialization
newMorphForSlotNamed: aString
		
	| result |
	result := SimpleSlotMorph slot: aString in: self object equals: nil.
	^ result
		beTransparent;
		hResizing: #spaceFill;
		yourself.